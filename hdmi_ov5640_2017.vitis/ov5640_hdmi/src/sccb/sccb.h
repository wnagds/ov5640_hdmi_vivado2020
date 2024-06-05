#include"xgpiops.h"
#include"sleep.h"
#ifndef SCCB_H_
#define SCCB_H_

#define EMIO_SCL_NUM 54
#define EMIO_SDA_NUM 55

void emio_init(void);
void sccb_start(void);
void sccb_stop(void);
void sccb_ack(void);
void sccb_send_byte(u8 txd);
u8  sccb_rece_byte(void);

#endif /* sccb_EMIO_CFG_ */