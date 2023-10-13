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
static const char *ng0 = "D:/vhdl/seven_segment/seven_segment.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1748962403_3212880686_p_0(char *t0)
{
    char t11[16];
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
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    int t19;
    int t20;
    int t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;

LAB0:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3968);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(21, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 + 1);
    t3 = (t0 + 4080);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t6;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 50);
    if (t2 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 6448);
    t5 = xsi_mem_cmp(t1, t3, 4U);
    if (t5 == 1)
        goto LAB14;

LAB25:    t7 = (t0 + 6452);
    t6 = xsi_mem_cmp(t7, t3, 4U);
    if (t6 == 1)
        goto LAB15;

LAB26:    t9 = (t0 + 6456);
    t19 = xsi_mem_cmp(t9, t3, 4U);
    if (t19 == 1)
        goto LAB16;

LAB27:    t13 = (t0 + 6460);
    t20 = xsi_mem_cmp(t13, t3, 4U);
    if (t20 == 1)
        goto LAB17;

LAB28:    t15 = (t0 + 6464);
    t21 = xsi_mem_cmp(t15, t3, 4U);
    if (t21 == 1)
        goto LAB18;

LAB29:    t17 = (t0 + 6468);
    t23 = xsi_mem_cmp(t17, t3, 4U);
    if (t23 == 1)
        goto LAB19;

LAB30:    t24 = (t0 + 6472);
    t26 = xsi_mem_cmp(t24, t3, 4U);
    if (t26 == 1)
        goto LAB20;

LAB31:    t27 = (t0 + 6476);
    t29 = xsi_mem_cmp(t27, t3, 4U);
    if (t29 == 1)
        goto LAB21;

LAB32:    t30 = (t0 + 6480);
    t32 = xsi_mem_cmp(t30, t3, 4U);
    if (t32 == 1)
        goto LAB22;

LAB33:    t33 = (t0 + 6484);
    t35 = xsi_mem_cmp(t33, t3, 4U);
    if (t35 == 1)
        goto LAB23;

LAB34:
LAB24:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 6568);
    t4 = (t0 + 4208);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);

LAB13:    goto LAB3;

LAB5:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 4080);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6340U);
    t4 = (t0 + 6440);
    t8 = (t11 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t5 = (3 - 0);
    t12 = (t5 * 1);
    t12 = (t12 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t12;
    t2 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t3, t1, t4, t11);
    if (t2 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6340U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t3, t1, 1);
    t7 = (t11 + 12U);
    t12 = *((unsigned int *)t7);
    t18 = (1U * t12);
    t2 = (4U != t18);
    if (t2 == 1)
        goto LAB11;

LAB12:    t8 = (t0 + 4144);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 4U);
    xsi_driver_first_trans_fast(t8);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(25, ng0);
    t9 = (t0 + 6444);
    t13 = (t0 + 4144);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 4U);
    xsi_driver_first_trans_fast(t13);
    goto LAB9;

LAB11:    xsi_size_not_matching(4U, t18, 0);
    goto LAB12;

LAB14:    xsi_set_current_line(31, ng0);
    t36 = (t0 + 6488);
    t38 = (t0 + 4208);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memcpy(t42, t36, 8U);
    xsi_driver_first_trans_fast(t38);
    goto LAB13;

LAB15:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 6496);
    t4 = (t0 + 4208);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB16:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 6504);
    t4 = (t0 + 4208);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB17:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 6512);
    t4 = (t0 + 4208);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB18:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 6520);
    t4 = (t0 + 4208);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB19:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 6528);
    t4 = (t0 + 4208);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB20:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 6536);
    t4 = (t0 + 4208);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB21:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 6544);
    t4 = (t0 + 4208);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB22:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 6552);
    t4 = (t0 + 4208);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB23:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 6560);
    t4 = (t0 + 4208);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB35:;
}

static void work_a_1748962403_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4272);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3984);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1748962403_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(46, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4336);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 4000);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1748962403_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1748962403_3212880686_p_0,(void *)work_a_1748962403_3212880686_p_1,(void *)work_a_1748962403_3212880686_p_2};
	xsi_register_didat("work_a_1748962403_3212880686", "isim/tb_isim_beh.exe.sim/work/a_1748962403_3212880686.didat");
	xsi_register_executes(pe);
}
