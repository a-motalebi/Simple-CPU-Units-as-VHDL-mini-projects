/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/vhdl/divider_IPCore/tb.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2563015576_1035706684(char *, char *, int , int );


static void work_a_3671711236_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3584);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2760);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3584);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2760);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3671711236_2372691052_p_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    char *t11;
    int64 t12;
    int64 t13;
    int t14;

LAB0:    t1 = (t0 + 3200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t3, 145, 16);
    t4 = (16U != 16U);
    if (t4 == 1)
        goto LAB4;

LAB5:    t5 = (t0 + 3648);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(60, ng0);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t3, 14, 16);
    t5 = (t3 + 12U);
    t10 = *((unsigned int *)t5);
    t10 = (t10 * 1U);
    t4 = (16U != t10);
    if (t4 == 1)
        goto LAB6;

LAB7:    t6 = (t0 + 3712);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t2, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1968U);
    t5 = *((char **)t2);
    t12 = *((int64 *)t5);
    t13 = (t12 * 10);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t13);

LAB10:    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB4:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB5;

LAB6:    xsi_size_not_matching(16U, t10, 0);
    goto LAB7;

LAB8:    xsi_set_current_line(62, ng0);
    t14 = (-(555));
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t3, t14, 16);
    t5 = (t3 + 12U);
    t10 = *((unsigned int *)t5);
    t10 = (t10 * 1U);
    t4 = (16U != t10);
    if (t4 == 1)
        goto LAB12;

LAB13:    t6 = (t0 + 3648);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t2, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(63, ng0);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t3, 26, 16);
    t5 = (t3 + 12U);
    t10 = *((unsigned int *)t5);
    t10 = (t10 * 1U);
    t4 = (16U != t10);
    if (t4 == 1)
        goto LAB14;

LAB15:    t6 = (t0 + 3712);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t2, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(65, ng0);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_size_not_matching(16U, t10, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(16U, t10, 0);
    goto LAB15;

LAB16:    goto LAB2;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

}


extern void work_a_3671711236_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3671711236_2372691052_p_0,(void *)work_a_3671711236_2372691052_p_1};
	xsi_register_didat("work_a_3671711236_2372691052", "isim/tb_isim_beh.exe.sim/work/a_3671711236_2372691052.didat");
	xsi_register_executes(pe);
}
