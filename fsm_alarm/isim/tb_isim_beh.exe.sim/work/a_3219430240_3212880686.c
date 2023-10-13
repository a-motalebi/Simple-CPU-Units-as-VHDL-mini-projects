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
static const char *ng0 = "D:/vhdl/fsm_alarm/fsm_alarm.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3219430240_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(22, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4080);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 3968);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3219430240_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(23, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4144);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3984);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3219430240_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10};

LAB0:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4000);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(27, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 + 1);
    t3 = (t0 + 4208);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t6;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (char *)((nl0) + t2);
    goto **((char **)t1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 1992U);
    t7 = *((char **)t4);
    t11 = *((unsigned char *)t7);
    t12 = (t11 == (unsigned char)3);
    if (t12 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 4272);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB12:    goto LAB5;

LAB7:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (2000000 - 1);
    t11 = (t5 < t6);
    if (t11 == 1)
        goto LAB17;

LAB18:    t2 = (unsigned char)0;

LAB19:    if (t2 != 0)
        goto LAB14;

LAB16:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 2000000);
    if (t2 != 0)
        goto LAB20;

LAB21:
LAB15:    goto LAB5;

LAB8:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (3000000 - 1);
    t11 = (t5 < t6);
    if (t11 == 1)
        goto LAB28;

LAB29:    t2 = (unsigned char)0;

LAB30:    if (t2 != 0)
        goto LAB25;

LAB27:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (3000000 - 1);
    t2 = (t5 == t6);
    if (t2 != 0)
        goto LAB31;

LAB32:
LAB26:    goto LAB5;

LAB9:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (1000000 - 1);
    t11 = (t5 < t6);
    if (t11 == 1)
        goto LAB39;

LAB40:    t2 = (unsigned char)0;

LAB41:    if (t2 != 0)
        goto LAB36;

LAB38:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (1000000 - 1);
    t2 = (t5 == t6);
    if (t2 != 0)
        goto LAB42;

LAB43:
LAB37:    goto LAB5;

LAB10:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 4336);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 <= 1000000);
    if (t2 != 0)
        goto LAB47;

LAB49:
LAB48:    goto LAB5;

LAB11:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 4208);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    *((int *)t13) = 0;
    xsi_driver_first_trans_fast(t4);
    goto LAB12;

LAB14:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 4272);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 4208);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB17:    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t12 = *((unsigned char *)t4);
    t14 = (t12 == (unsigned char)3);
    t2 = t14;
    goto LAB19;

LAB20:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 4208);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t11 = (t2 == (unsigned char)3);
    if (t11 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4272);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB23:    goto LAB15;

LAB22:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 4272);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB23;

LAB25:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4272);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 4208);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB26;

LAB28:    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t12 = *((unsigned char *)t4);
    t14 = (t12 == (unsigned char)2);
    t2 = t14;
    goto LAB30;

LAB31:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 4208);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t11 = (t2 == (unsigned char)2);
    if (t11 != 0)
        goto LAB33;

LAB35:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 4272);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB34:    goto LAB26;

LAB33:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 4272);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB34;

LAB36:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 4272);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4208);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB37;

LAB39:    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t12 = *((unsigned char *)t4);
    t14 = (t12 == (unsigned char)3);
    t2 = t14;
    goto LAB41;

LAB42:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4208);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t11 = (t2 == (unsigned char)3);
    if (t11 != 0)
        goto LAB44;

LAB46:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 4272);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB45:    goto LAB37;

LAB44:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4272);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB45;

LAB47:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4272);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 4336);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB48;

}


extern void work_a_3219430240_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3219430240_3212880686_p_0,(void *)work_a_3219430240_3212880686_p_1,(void *)work_a_3219430240_3212880686_p_2};
	xsi_register_didat("work_a_3219430240_3212880686", "isim/tb_isim_beh.exe.sim/work/a_3219430240_3212880686.didat");
	xsi_register_executes(pe);
}
