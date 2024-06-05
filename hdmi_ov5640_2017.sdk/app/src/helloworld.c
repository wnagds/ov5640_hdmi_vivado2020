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

  //宏定义
  #define BYTES_PIXEL        3                          //像素字节数，RGB888占3个字节
  #define VDMA_ID            XPAR_AXIVDMA_0_DEVICE_ID   //VDMA器件ID
  #define DISP_VTC_ID        XPAR_VTC_0_DEVICE_ID       //VTC器件ID


  //函数声明
  void colorbar(u8 *frame, u32 width, u32 height, u32 stride);

  //全局变量
  XAxiVdma     vdma;
  DisplayCtrl  dispCtrl;
  VideoMode    vd_mode;
  //frame buffer的起始地址
  unsigned int const frame_buffer_addr = (XPAR_PS7_DDR_0_S_AXI_BASEADDR + 0x1000000);

  int main(void)
  {
    u32 status;
	u16 cmos_h_pixel;   //ov5640 DVP 输出水平像素点数
	u16 cmos_v_pixel;   //ov5640 DVP 输出垂直像素点数
	u16 total_h_pixel;  //ov5640 水平总像素大小
	u16 total_v_pixel;  //ov5640 垂直总像素大小

  	//根据获取的LCD的ID号来进行video参数的选择

    vd_mode=VMODE_1280x720;
    cmos_h_pixel  = 1280;
    cmos_v_pixel  = 720;
    total_h_pixel = 2570;
    total_v_pixel = 980;

    emio_init();                         //初始化EMIO
	status = ov5640_init( cmos_h_pixel,  //初始化ov5640
						  cmos_v_pixel,
						 total_h_pixel,
						 total_v_pixel);
    if(status == 0)
		xil_printf("OV5640 detected successful!\r\n");
	else
		xil_printf("OV5640 detected failed!\r\n");



  	//配置VDMA
  	run_vdma_frame_buffer(&vdma, VDMA_ID, vd_mode.width, vd_mode.height,
  							frame_buffer_addr,0, 0,BOTH);


      //初始化Display controller
  	DisplayInitialize(&dispCtrl, DISP_VTC_ID);
      //设置VideoMode
  	DisplaySetMode(&dispCtrl, &vd_mode);
  	DisplayStart(&dispCtrl);

  	// //写彩条
  	// colorbar((u8*)frame_buffer_addr, vd_mode.width,
  	// 		vd_mode.height, vd_mode.width*BYTES_PIXEL);
      return 0;
  }

  //写彩条函数（彩虹色）
  void colorbar(u8 *frame, u32 width, u32 height, u32 stride)
  {
  	u32 color_edge;
  	u32 x_pos, y_pos;
  	u32 y_stride = 0;
  	u8 rgb_r, rgb_b, rgb_g;

  	color_edge = width * BYTES_PIXEL / 7;
  	for (y_pos = 0; y_pos < height; y_pos++) {
  		for (x_pos = 0; x_pos < (width * BYTES_PIXEL); x_pos += BYTES_PIXEL) {
  			if (x_pos < color_edge) {   //红色
  				rgb_r = 0xFF;
  				rgb_g = 0;
  				rgb_b = 0;
  			} else if ((x_pos >= color_edge) && (x_pos < color_edge * 2)) {  //橙色
  				rgb_r = 0xFF;
  				rgb_g = 0x7F;
  				rgb_b = 0;
  			} else if ((x_pos >= color_edge * 2) && (x_pos < color_edge * 3)) { //黄色
  				rgb_r = 0xFF;
  				rgb_g = 0xFF;
  				rgb_b = 0;
  			} else if ((x_pos >= color_edge * 3) && (x_pos < color_edge * 4)) { //绿色
  				rgb_r = 0;
  				rgb_g = 0xFF;
  				rgb_b = 0;
  			} else if ((x_pos >= color_edge * 4) && (x_pos < color_edge * 5)) { //青色
  				rgb_r = 0;
  				rgb_g = 0xFF;
  				rgb_b = 0xFF;
 			} else if ((x_pos >= color_edge * 5) && (x_pos < color_edge * 6)) { //蓝色
 				rgb_r = 0;
 				rgb_g = 0;
 				rgb_b = 0xFF;
 			} else if ((x_pos >= color_edge * 6) && (x_pos < color_edge * 7)) { //紫色
 				rgb_r = 0xEE;
 				rgb_g = 82;
 				rgb_b = 0xEE;
 			}
				//由于我们使用到的LCD RGB888,因此一个像素点占三个字节，每个字节对应红，绿，蓝一种颜色
 			frame[x_pos + y_stride + 0] = rgb_b;
 			frame[x_pos + y_stride + 1] = rgb_g;
 			frame[x_pos + y_stride + 2] = rgb_r;
 		}
			//当LCD按照width方向刷新完后，下一次要在height方向的下一个位置开始刷新屏幕
 		y_stride += stride;
 	}

 	Xil_DCacheFlush();     //刷新Cache，数据更新至内存
 	xil_printf("show color bar\r\n");
 }
