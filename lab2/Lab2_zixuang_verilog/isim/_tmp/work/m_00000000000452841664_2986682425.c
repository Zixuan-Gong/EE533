/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

/* This file is designed for use with ISim build 0x734844ce */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Alu32.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {5U, 0U};
static unsigned int ng8[] = {6U, 0U};



static void A27_0(char *t0)
{
    char t9[8];
    char t10[8];
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;

LAB0:    t1 = (t0 + 1440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1620);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t3 = (t0 + 740U);
    t4 = *((char **)t3);

LAB6:    t3 = ((char*)((ng1)));
    t5 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 3);
    if (t5 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t5 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t5 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t5 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t5 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t5 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t5 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t5 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t5 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t5 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t5 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t5 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t5 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 964);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(29, ng0);
    t6 = (t0 + 564U);
    t7 = *((char **)t6);
    t6 = (t0 + 652U);
    t8 = *((char **)t6);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t7, 32, t8, 32);
    t6 = (t0 + 964);
    xsi_vlogvar_assign_value(t6, t9, 0, 0, 32);
    goto LAB23;

LAB9:    xsi_set_current_line(30, ng0);
    t3 = (t0 + 564U);
    t6 = *((char **)t3);
    t3 = (t0 + 652U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 32, t6, 32, t7, 32);
    t3 = (t0 + 964);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 32);
    goto LAB23;

LAB11:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 564U);
    t6 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_lshift(t9, 32, t6, 32, t3, 32);
    t7 = (t0 + 964);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 32);
    goto LAB23;

LAB13:    xsi_set_current_line(32, ng0);
    t3 = (t0 + 564U);
    t6 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_rshift(t9, 32, t6, 32, t3, 32);
    t7 = (t0 + 964);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 32);
    goto LAB23;

LAB15:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 564U);
    t6 = *((char **)t3);
    t3 = (t0 + 964);
    xsi_vlogvar_assign_value(t3, t6, 0, 0, 32);
    goto LAB23;

LAB17:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 652U);
    t6 = *((char **)t3);
    t3 = (t0 + 964);
    xsi_vlogvar_assign_value(t3, t6, 0, 0, 32);
    goto LAB23;

LAB19:    xsi_set_current_line(35, ng0);
    t3 = (t0 + 564U);
    t6 = *((char **)t3);
    t3 = (t0 + 652U);
    t7 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t11 + 4U);
    t8 = (t6 + 4U);
    t12 = (t7 + 4U);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t8);
    t17 = *((unsigned int *)t12);
    t18 = (t16 ^ t17);
    t19 = (t15 | t18);
    t20 = *((unsigned int *)t8);
    t21 = *((unsigned int *)t12);
    t22 = (t20 | t21);
    t23 = (~(t22));
    t24 = (t19 & t23);
    if (t24 != 0)
        goto LAB27;

LAB24:    if (t22 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t11) = 1;

LAB27:    memset(t10, 0, 8);
    t25 = (t10 + 4U);
    t26 = (t11 + 4U);
    t27 = *((unsigned int *)t26);
    t28 = (~(t27));
    t29 = *((unsigned int *)t11);
    t30 = (t29 & t28);
    t31 = (t30 & 1U);
    if (t31 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t26) != 0)
        goto LAB30;

LAB31:    t32 = (t10 + 4U);
    t33 = *((unsigned int *)t10);
    t34 = *((unsigned int *)t32);
    t35 = (t33 || t34);
    if (t35 > 0)
        goto LAB32;

LAB33:    t37 = *((unsigned int *)t10);
    t38 = (~(t37));
    t39 = *((unsigned int *)t32);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t32) > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t10) > 0)
        goto LAB38;

LAB39:    memcpy(t9, t41, 8);

LAB40:    t42 = (t0 + 964);
    xsi_vlogvar_assign_value(t42, t9, 0, 0, 32);
    goto LAB23;

LAB26:    *((unsigned int *)t11) = 1;
    *((unsigned int *)t3) = 1;
    goto LAB27;

LAB28:    *((unsigned int *)t10) = 1;
    goto LAB31;

LAB30:    *((unsigned int *)t10) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB31;

LAB32:    t36 = ((char*)((ng2)));
    goto LAB33;

LAB34:    t41 = ((char*)((ng1)));
    goto LAB35;

LAB36:    xsi_vlog_unsigned_bit_combine(t9, 32, t36, 32, t41, 32);
    goto LAB40;

LAB38:    memcpy(t9, t36, 8);
    goto LAB40;

}


extern void work_m_00000000000452841664_2986682425_init()
{
	static char *pe[] = {(void *)A27_0};
	xsi_register_didat("work_m_00000000000452841664_2986682425", "isim/_tmp/work/m_00000000000452841664_2986682425.didat");
	xsi_register_executes(pe);
}
