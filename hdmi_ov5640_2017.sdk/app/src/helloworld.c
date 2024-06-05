   #include <stdio.h>
   #include <stdlib.h>
   #include <string.h>
   #include "xil_types.h"
   #include "xil_cache.h"
   #include "xparameters.h"
   #include "xaxivdma.h"
   #include "xaxivdma_i.h"
  #include "display_ctrl/display_ctrl.h"
  #include "vdma_api/vdma_api.h"
  #include "ov5640/ov5640_init.h"
  #include "sccb/sccb.h"

  //�궨��
  #define BYTES_PIXEL        3                          //�����ֽ�����RGB888ռ3���ֽ�
  #define VDMA_ID            XPAR_AXIVDMA_0_DEVICE_ID   //VDMA����ID
  #define DISP_VTC_ID        XPAR_VTC_0_DEVICE_ID       //VTC����ID


  //��������
  void colorbar(u8 *frame, u32 width, u32 height, u32 stride);

  //ȫ�ֱ���
  XAxiVdma     vdma;
  DisplayCtrl  dispCtrl;
  VideoMode    vd_mode;
  //frame buffer����ʼ��ַ
  unsigned int const frame_buffer_addr = (XPAR_PS7_DDR_0_S_AXI_BASEADDR + 0x1000000);

  int main(void)
  {
    u32 status;
	u16 cmos_h_pixel;   //ov5640 DVP ���ˮƽ���ص���
	u16 cmos_v_pixel;   //ov5640 DVP �����ֱ���ص���
	u16 total_h_pixel;  //ov5640 ˮƽ�����ش�С
	u16 total_v_pixel;  //ov5640 ��ֱ�����ش�С

  	//���ݻ�ȡ��LCD��ID��������video������ѡ��

    vd_mode=VMODE_1280x720;
    cmos_h_pixel  = 1280;
    cmos_v_pixel  = 720;
    total_h_pixel = 2570;
    total_v_pixel = 980;

    emio_init();                         //��ʼ��EMIO
	status = ov5640_init( cmos_h_pixel,  //��ʼ��ov5640
						  cmos_v_pixel,
						 total_h_pixel,
						 total_v_pixel);
    if(status == 0)
		xil_printf("OV5640 detected successful!\r\n");
	else
		xil_printf("OV5640 detected failed!\r\n");



  	//����VDMA
  	run_vdma_frame_buffer(&vdma, VDMA_ID, vd_mode.width, vd_mode.height,
  							frame_buffer_addr,0, 0,BOTH);


      //��ʼ��Display controller
  	DisplayInitialize(&dispCtrl, DISP_VTC_ID);
      //����VideoMode
  	DisplaySetMode(&dispCtrl, &vd_mode);
  	DisplayStart(&dispCtrl);

  	// //д����
  	// colorbar((u8*)frame_buffer_addr, vd_mode.width,
  	// 		vd_mode.height, vd_mode.width*BYTES_PIXEL);
      return 0;
  }

  //д�����������ʺ�ɫ��
  void colorbar(u8 *frame, u32 width, u32 height, u32 stride)
  {
  	u32 color_edge;
  	u32 x_pos, y_pos;
  	u32 y_stride = 0;
  	u8 rgb_r, rgb_b, rgb_g;

  	color_edge = width * BYTES_PIXEL / 7;
  	for (y_pos = 0; y_pos < height; y_pos++) {
  		for (x_pos = 0; x_pos < (width * BYTES_PIXEL); x_pos += BYTES_PIXEL) {
  			if (x_pos < color_edge) {   //��ɫ
  				rgb_r = 0xFF;
  				rgb_g = 0;
  				rgb_b = 0;
  			} else if ((x_pos >= color_edge) && (x_pos < color_edge * 2)) {  //��ɫ
  				rgb_r = 0xFF;
  				rgb_g = 0x7F;
  				rgb_b = 0;
  			} else if ((x_pos >= color_edge * 2) && (x_pos < color_edge * 3)) { //��ɫ
  				rgb_r = 0xFF;
  				rgb_g = 0xFF;
  				rgb_b = 0;
  			} else if ((x_pos >= color_edge * 3) && (x_pos < color_edge * 4)) { //��ɫ
  				rgb_r = 0;
  				rgb_g = 0xFF;
  				rgb_b = 0;
  			} else if ((x_pos >= color_edge * 4) && (x_pos < color_edge * 5)) { //��ɫ
  				rgb_r = 0;
  				rgb_g = 0xFF;
  				rgb_b = 0xFF;
 			} else if ((x_pos >= color_edge * 5) && (x_pos < color_edge * 6)) { //��ɫ
 				rgb_r = 0;
 				rgb_g = 0;
 				rgb_b = 0xFF;
 			} else if ((x_pos >= color_edge * 6) && (x_pos < color_edge * 7)) { //��ɫ
 				rgb_r = 0xEE;
 				rgb_g = 82;
 				rgb_b = 0xEE;
 			}
				//��������ʹ�õ���LCD RGB888,���һ�����ص�ռ�����ֽڣ�ÿ���ֽڶ�Ӧ�죬�̣���һ����ɫ
 			frame[x_pos + y_stride + 0] = rgb_b;
 			frame[x_pos + y_stride + 1] = rgb_g;
 			frame[x_pos + y_stride + 2] = rgb_r;
 		}
			//��LCD����width����ˢ�������һ��Ҫ��height�������һ��λ�ÿ�ʼˢ����Ļ
 		y_stride += stride;
 	}

 	Xil_DCacheFlush();     //ˢ��Cache�����ݸ������ڴ�
 	xil_printf("show color bar\r\n");
 }
