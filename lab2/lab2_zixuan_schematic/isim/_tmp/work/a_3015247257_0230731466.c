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
extern char *STD_STANDARD;
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;
static const char *ng3 = "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Lab2_zixuan/tb_32eqa_selfcheck_beh.vhd";

void p_3564397177_sub_1496949865_3564397177(char *, char *, char *, unsigned char , unsigned char , int );


void a_3015247257_0230731466_sub_382980466_95745116(char *t0, char *t1, unsigned char t2, int t3)
{
    char t4[120];
    char t5[16];
    char t6[16];
    char t40[16];
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned char t37;
    unsigned char t38;
    char *t39;
    char *t41;
    char *t42;
    int t43;
    unsigned int t44;
    int t45;
    int t46;
    int t47;
    char *t48;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 1;
    t8 = (t7 + 4U);
    *((int *)t8) = 4096;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (4096 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t4 + 4U);
    t11 = ((STD_STANDARD) + 708);
    t12 = (t8 + 48U);
    *((char **)t12) = t11;
    t13 = xsi_get_memory(4096U);
    t14 = (t8 + 32U);
    *((char **)t14) = t13;
    xsi_type_set_default_value(t11, t13, t6);
    t15 = (t8 + 36U);
    *((char **)t15) = t6;
    t16 = (t8 + 44U);
    *((unsigned int *)t16) = 4096U;
    t17 = (t8 + 76U);
    *((char **)t17) = t13;
    t18 = (t8 + 68U);
    *((int *)t18) = 0;
    t19 = (t8 + 72U);
    t20 = (t6 + 12U);
    t10 = *((unsigned int *)t20);
    t21 = (t10 - 1);
    *((int *)t19) = t21;
    t22 = (t8 + 64U);
    t24 = (4096U > 2147483644);
    if (t24 == 1)
        goto LAB2;

LAB3:    t25 = (4096U + 3);
    t26 = (t25 / 16);
    t23 = t26;

LAB4:    *((unsigned int *)t22) = t23;
    t27 = (t4 + 84U);
    t28 = ((STD_TEXTIO) + 1872);
    t29 = (t27 + 28U);
    *((char **)t29) = t28;
    t30 = (t27 + 20U);
    *((char **)t30) = 0;
    t31 = (t27 + 32U);
    *((int *)t31) = 1;
    t32 = (t27 + 24U);
    *((char **)t32) = 0;
    t33 = (t5 + 4U);
    *((unsigned char *)t33) = t2;
    t34 = (t5 + 5U);
    *((int *)t34) = t3;
    t35 = (t0 + 724U);
    t36 = *((char **)t35);
    t37 = *((unsigned char *)t36);
    t38 = (t37 != t2);
    if (t38 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB1:    xsi_access_variable_delete(t27);
    t7 = (t8 + 44);
    t9 = *((int *)t7);
    t11 = (t8 + 76U);
    t12 = *((char **)t11);
    xsi_put_memory(t9, t12);
    return;
LAB2:    t23 = 2147483647;
    goto LAB4;

LAB5:    t35 = (t0 + 3072);
    t41 = (t40 + 0U);
    t42 = (t41 + 0U);
    *((int *)t42) = 1;
    t42 = (t41 + 4U);
    *((int *)t42) = 14;
    t42 = (t41 + 8U);
    *((int *)t42) = 1;
    t43 = (14 - 1);
    t44 = (t43 * 1);
    t44 = (t44 + 1);
    t42 = (t41 + 12U);
    *((unsigned int *)t42) = t44;
    std_textio_write7(STD_TEXTIO, t1, t27, t35, t40, (unsigned char)0, 0);
    std_textio_write5(STD_TEXTIO, t1, t27, t3, (unsigned char)0, 0);
    t7 = (t0 + 3086);
    t12 = (t40 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 1;
    t13 = (t12 + 4U);
    *((int *)t13) = 10;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t9 = (10 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t10;
    std_textio_write7(STD_TEXTIO, t1, t27, t7, t40, (unsigned char)0, 0);
    t7 = (t0 + 724U);
    t11 = *((char **)t7);
    t37 = *((unsigned char *)t11);
    p_3564397177_sub_1496949865_3564397177(IEEE_P_3564397177, t1, t27, t37, (unsigned char)0, 0);
    t7 = (t0 + 3096);
    t12 = (t40 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 1;
    t13 = (t12 + 4U);
    *((int *)t13) = 13;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t9 = (13 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t10;
    std_textio_write7(STD_TEXTIO, t1, t27, t7, t40, (unsigned char)0, 0);
    p_3564397177_sub_1496949865_3564397177(IEEE_P_3564397177, t1, t27, t2, (unsigned char)0, 0);
    t7 = (t0 + 3109);
    t12 = (t40 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 1;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t9 = (1 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t10;
    std_textio_write7(STD_TEXTIO, t1, t27, t7, t40, (unsigned char)0, 0);
    t7 = xsi_access_variable_all(t27);
    t11 = (t7 + 32U);
    t12 = *((char **)t11);
    t11 = (t8 + 32U);
    t13 = *((char **)t11);
    t11 = (t6 + 0U);
    t9 = *((int *)t11);
    t14 = (t4 + 84U);
    t15 = xsi_access_variable_all(t14);
    t16 = (t15 + 36U);
    t16 = *((char **)t16);
    t17 = (t16 + 0U);
    t21 = *((int *)t17);
    t10 = (t21 - t9);
    t18 = (t4 + 84U);
    t19 = xsi_access_variable_all(t18);
    t20 = (t19 + 36U);
    t20 = *((char **)t20);
    t22 = (t20 + 8U);
    t43 = *((int *)t22);
    t23 = (t10 * t43);
    t28 = (t4 + 84U);
    t29 = xsi_access_variable_all(t28);
    t30 = (t29 + 36U);
    t30 = *((char **)t30);
    t31 = (t30 + 4U);
    t45 = *((int *)t31);
    t32 = (t6 + 4U);
    t46 = *((int *)t32);
    t35 = (t6 + 8U);
    t47 = *((int *)t35);
    xsi_vhdl_check_range_of_slice(t9, t46, t47, t21, t45, t43);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t36 = (t13 + t25);
    t39 = (t4 + 84U);
    t41 = xsi_access_variable_all(t39);
    t42 = (t41 + 36U);
    t42 = *((char **)t42);
    t48 = (t42 + 12U);
    t26 = *((unsigned int *)t48);
    t44 = (1U * t26);
    memcpy(t36, t12, t44);
    xsi_access_variable_deallocate(t27);
    if ((unsigned char)0 == 0)
        goto LAB8;

LAB9:    t7 = (t0 + 888U);
    t11 = *((char **)t7);
    t9 = *((int *)t11);
    t21 = (t9 + 1);
    t7 = (t0 + 888U);
    t12 = *((char **)t7);
    t7 = (t12 + 0);
    *((int *)t7) = t21;
    t13 = (t0 + 856U);
    xsi_variable_act(t13);
    goto LAB6;

LAB8:    t7 = (t8 + 32U);
    t11 = *((char **)t7);
    t7 = (t6 + 12U);
    t10 = *((unsigned int *)t7);
    t10 = (t10 * 1U);
    xsi_report(t11, t10, (unsigned char)2);
    goto LAB9;

}

static void work_a_3015247257_0230731466_p_0(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    unsigned char t11;
    int t13;
    unsigned int t14;

LAB0:    t1 = (t0 + 1432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng3);
    t3 = (100 * 1000000LL);
    t2 = (t0 + 1348);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(82, ng3);
    t2 = (t0 + 3110);
    t5 = (t0 + 1648);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(83, ng3);
    t2 = (t0 + 3142);
    t5 = (t0 + 1684);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(86, ng3);
    t3 = (200 * 1000000LL);
    t2 = (t0 + 1348);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(87, ng3);
    t2 = (t0 + 3174);
    t5 = (t0 + 1648);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(90, ng3);
    t3 = (50 * 1000000LL);
    t2 = (t0 + 1348);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(91, ng3);
    t2 = (t0 + 1348);
    a_3015247257_0230731466_sub_382980466_95745116(t0, t2, (unsigned char)2, 350);
    xsi_set_current_line(94, ng3);
    t3 = (150 * 1000000LL);
    t2 = (t0 + 1348);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(95, ng3);
    t2 = (t0 + 3206);
    t5 = (t0 + 1684);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(98, ng3);
    t3 = (50 * 1000000LL);
    t2 = (t0 + 1348);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(99, ng3);
    t2 = (t0 + 1348);
    a_3015247257_0230731466_sub_382980466_95745116(t0, t2, (unsigned char)3, 550);
    xsi_set_current_line(102, ng3);
    t3 = (150 * 1000000LL);
    t2 = (t0 + 1348);
    xsi_process_wait(t2, t3);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(103, ng3);
    t2 = (t0 + 3238);
    t5 = (t0 + 1648);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(106, ng3);
    t3 = (50 * 1000000LL);
    t2 = (t0 + 1348);
    xsi_process_wait(t2, t3);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(107, ng3);
    t2 = (t0 + 1348);
    a_3015247257_0230731466_sub_382980466_95745116(t0, t2, (unsigned char)2, 750);
    xsi_set_current_line(110, ng3);
    t3 = (50 * 1000000LL);
    t2 = (t0 + 1348);
    xsi_process_wait(t2, t3);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(111, ng3);
    t2 = (t0 + 3270);
    t5 = (t0 + 1684);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(114, ng3);
    t3 = (50 * 1000000LL);
    t2 = (t0 + 1348);
    xsi_process_wait(t2, t3);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    xsi_set_current_line(115, ng3);
    t2 = (t0 + 1348);
    a_3015247257_0230731466_sub_382980466_95745116(t0, t2, (unsigned char)3, 850);
    xsi_set_current_line(117, ng3);
    t3 = (150 * 1000000LL);
    t2 = (t0 + 1348);
    xsi_process_wait(t2, t3);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    xsi_set_current_line(119, ng3);
    t2 = (t0 + 888U);
    t4 = *((char **)t2);
    t10 = *((int *)t4);
    t11 = (t10 == 0);
    if (t11 != 0)
        goto LAB44;

LAB46:    xsi_set_current_line(125, ng3);
    t2 = (t0 + 1348);
    t4 = (t0 + 1104U);
    t5 = (t0 + 888U);
    t6 = *((char **)t5);
    t10 = *((int *)t6);
    std_textio_write5(STD_TEXTIO, t2, t4, t10, (unsigned char)0, 0);
    xsi_set_current_line(126, ng3);
    t2 = (t0 + 1348);
    t4 = (t0 + 1104U);
    t5 = (t0 + 3384);
    t7 = (t12 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 1;
    t8 = (t7 + 4U);
    *((int *)t8) = 27;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t10 = (27 - 1);
    t14 = (t10 * 1);
    t14 = (t14 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t14;
    std_textio_write7(STD_TEXTIO, t2, t4, t5, t12, (unsigned char)0, 0);
    xsi_set_current_line(128, ng3);
    if ((unsigned char)0 == 0)
        goto LAB49;

LAB50:
LAB45:    goto LAB2;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    xsi_set_current_line(120, ng3);
    t2 = (t0 + 1348);
    t5 = (t0 + 1104U);
    t6 = (t0 + 3302);
    t8 = (t12 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 1;
    t9 = (t8 + 4U);
    *((int *)t9) = 21;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t13 = (21 - 1);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t14;
    std_textio_write7(STD_TEXTIO, t2, t5, t6, t12, (unsigned char)0, 0);
    xsi_set_current_line(121, ng3);
    if ((unsigned char)0 == 0)
        goto LAB47;

LAB48:    goto LAB45;

LAB47:    t2 = (t0 + 3323);
    xsi_report(t2, 61U, (unsigned char)3);
    goto LAB48;

LAB49:    t2 = (t0 + 3411);
    xsi_report(t2, 30U, (unsigned char)3);
    goto LAB50;

}


extern void work_a_3015247257_0230731466_init()
{
	static char *pe[] = {(void *)work_a_3015247257_0230731466_p_0};
	static char *se[] = {(void *)a_3015247257_0230731466_sub_382980466_95745116};
	xsi_register_didat("work_a_3015247257_0230731466", "isim/_tmp/work/a_3015247257_0230731466.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
