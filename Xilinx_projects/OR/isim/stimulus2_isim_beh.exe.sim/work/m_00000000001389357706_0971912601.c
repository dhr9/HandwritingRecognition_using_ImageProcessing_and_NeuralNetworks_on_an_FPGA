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
static const char *ng0 = "Output=%d, i1=%d, i2=%d, i3=%d\n";
static const char *ng1 = "D:/Xilinx_projects/OR/stimulus2.v";
static int ng2[] = {0, 0};
static int ng3[] = {8, 0};
static int ng4[] = {1, 0};

void Monitor_75_3(char *);
void Monitor_75_3(char *);


static void Monitor_75_3_Func(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 1048U);
    t2 = *((char **)t1);
    t1 = (t0 + 1448);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1608);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t0 + 1768);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    xsi_vlogfile_write(1, 0, 3, ng0, 5, t0, (char)118, t2, 1, (char)118, t4, 1, (char)118, t7, 1, (char)118, t10, 1);

LAB1:    return;
}

static void Initial_44_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng1);

LAB4:    xsi_set_current_line(46, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(47, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(48, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(51, ng1);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    goto LAB1;

}

static void Always_53_1(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng1);
    t2 = (t0 + 4072);
    *((int *)t2) = 1;
    t3 = (t0 + 3288);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(54, ng1);

LAB5:    xsi_set_current_line(56, ng1);
    xsi_set_current_line(56, ng1);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);

LAB6:    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(58, ng1);
    t2 = (t0 + 3064);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB7:    xsi_set_current_line(57, ng1);
    t13 = (t0 + 3064);
    xsi_process_wait(t13, 10000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(57, ng1);
    t14 = (t0 + 1928);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t0 + 1768);
    xsi_vlogvar_assign_value(t17, t16, 0, 0, 1);
    t18 = (t0 + 1608);
    xsi_vlogvar_assign_value(t18, t16, 1, 0, 1);
    t19 = (t0 + 1448);
    xsi_vlogvar_assign_value(t19, t16, 2, 0, 1);
    xsi_set_current_line(56, ng1);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1928);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

LAB10:    xsi_set_current_line(58, ng1);
    xsi_vlog_stop(1);
    goto LAB2;

}

static void Initial_73_2(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;

LAB0:    xsi_set_current_line(73, ng1);

LAB2:    xsi_set_current_line(74, ng1);
    xsi_set_current_line(74, ng1);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 2088);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    xsi_set_current_line(74, ng1);

LAB6:    xsi_set_current_line(75, ng1);
    Monitor_75_3(t0);
    xsi_set_current_line(74, ng1);
    t1 = (t0 + 2088);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng4)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 2088);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

}

void Monitor_75_3(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 3560);
    t2 = (t0 + 4088);
    xsi_vlogfile_monitor((void *)Monitor_75_3_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000001389357706_0971912601_init()
{
	static char *pe[] = {(void *)Initial_44_0,(void *)Always_53_1,(void *)Initial_73_2,(void *)Monitor_75_3};
	xsi_register_didat("work_m_00000000001389357706_0971912601", "isim/stimulus2_isim_beh.exe.sim/work/m_00000000001389357706_0971912601.didat");
	xsi_register_executes(pe);
}
