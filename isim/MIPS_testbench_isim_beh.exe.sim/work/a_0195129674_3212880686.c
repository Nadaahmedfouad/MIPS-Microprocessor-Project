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
static const char *ng0 = "C:/Users/Nada/Desktop/NADAABOSAADA 211002838/ALUUNITCONTROL.vhd";



static void work_a_0195129674_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (5 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 3072);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5016);
    t11 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t11 = 0;

LAB7:    if (t11 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5022);
    t11 = 1;
    if (2U == 2U)
        goto LAB13;

LAB14:    t11 = 0;

LAB15:    if (t11 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5028);
    t11 = 1;
    if (2U == 2U)
        goto LAB21;

LAB22:    t11 = 0;

LAB23:    if (t11 != 0)
        goto LAB19;

LAB20:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5070);
    t11 = 1;
    if (2U == 2U)
        goto LAB70;

LAB71:    t11 = 0;

LAB72:    if (t11 != 0)
        goto LAB68;

LAB69:
LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t9 = (t0 + 5018);
    t12 = (t0 + 3136);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

LAB5:    t3 = 0;

LAB8:    if (t3 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t7 = (t2 + t3);
    t8 = (t1 + t3);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB6;

LAB10:    t3 = (t3 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(45, ng0);
    t9 = (t0 + 5024);
    t12 = (t0 + 3136);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

LAB13:    t3 = 0;

LAB16:    if (t3 < 2U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t7 = (t2 + t3);
    t8 = (t1 + t3);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB14;

LAB18:    t3 = (t3 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(47, ng0);
    t9 = (t0 + 1512U);
    t10 = *((char **)t9);
    t9 = (t0 + 5030);
    t17 = 1;
    if (4U == 4U)
        goto LAB30;

LAB31:    t17 = 0;

LAB32:    if (t17 != 0)
        goto LAB27;

LAB29:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5038);
    t11 = 1;
    if (4U == 4U)
        goto LAB38;

LAB39:    t11 = 0;

LAB40:    if (t11 != 0)
        goto LAB36;

LAB37:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5046);
    t11 = 1;
    if (4U == 4U)
        goto LAB46;

LAB47:    t11 = 0;

LAB48:    if (t11 != 0)
        goto LAB44;

LAB45:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5054);
    t11 = 1;
    if (4U == 4U)
        goto LAB54;

LAB55:    t11 = 0;

LAB56:    if (t11 != 0)
        goto LAB52;

LAB53:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5062);
    t11 = 1;
    if (4U == 4U)
        goto LAB62;

LAB63:    t11 = 0;

LAB64:    if (t11 != 0)
        goto LAB60;

LAB61:
LAB28:    goto LAB3;

LAB21:    t3 = 0;

LAB24:    if (t3 < 2U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t7 = (t2 + t3);
    t8 = (t1 + t3);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB22;

LAB26:    t3 = (t3 + 1);
    goto LAB24;

LAB27:    xsi_set_current_line(48, ng0);
    t15 = (t0 + 5034);
    t18 = (t0 + 3136);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t15, 4U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB28;

LAB30:    t4 = 0;

LAB33:    if (t4 < 4U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t13 = (t10 + t4);
    t14 = (t9 + t4);
    if (*((unsigned char *)t13) != *((unsigned char *)t14))
        goto LAB31;

LAB35:    t4 = (t4 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(50, ng0);
    t9 = (t0 + 5042);
    t12 = (t0 + 3136);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB28;

LAB38:    t3 = 0;

LAB41:    if (t3 < 4U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t7 = (t2 + t3);
    t8 = (t1 + t3);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB39;

LAB43:    t3 = (t3 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(52, ng0);
    t9 = (t0 + 5050);
    t12 = (t0 + 3136);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB28;

LAB46:    t3 = 0;

LAB49:    if (t3 < 4U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t7 = (t2 + t3);
    t8 = (t1 + t3);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB47;

LAB51:    t3 = (t3 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(54, ng0);
    t9 = (t0 + 5058);
    t12 = (t0 + 3136);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB28;

LAB54:    t3 = 0;

LAB57:    if (t3 < 4U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t7 = (t2 + t3);
    t8 = (t1 + t3);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB55;

LAB59:    t3 = (t3 + 1);
    goto LAB57;

LAB60:    xsi_set_current_line(56, ng0);
    t9 = (t0 + 5066);
    t12 = (t0 + 3136);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB28;

LAB62:    t3 = 0;

LAB65:    if (t3 < 4U)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t7 = (t2 + t3);
    t8 = (t1 + t3);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB63;

LAB67:    t3 = (t3 + 1);
    goto LAB65;

LAB68:    xsi_set_current_line(60, ng0);
    t9 = (t0 + 1512U);
    t10 = *((char **)t9);
    t9 = (t0 + 5072);
    t17 = 1;
    if (4U == 4U)
        goto LAB79;

LAB80:    t17 = 0;

LAB81:    if (t17 != 0)
        goto LAB76;

LAB78:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5080);
    t11 = 1;
    if (4U == 4U)
        goto LAB87;

LAB88:    t11 = 0;

LAB89:    if (t11 != 0)
        goto LAB85;

LAB86:
LAB77:    goto LAB3;

LAB70:    t3 = 0;

LAB73:    if (t3 < 2U)
        goto LAB74;
    else
        goto LAB72;

LAB74:    t7 = (t2 + t3);
    t8 = (t1 + t3);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB71;

LAB75:    t3 = (t3 + 1);
    goto LAB73;

LAB76:    xsi_set_current_line(61, ng0);
    t15 = (t0 + 5076);
    t18 = (t0 + 3136);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t15, 4U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB77;

LAB79:    t4 = 0;

LAB82:    if (t4 < 4U)
        goto LAB83;
    else
        goto LAB81;

LAB83:    t13 = (t10 + t4);
    t14 = (t9 + t4);
    if (*((unsigned char *)t13) != *((unsigned char *)t14))
        goto LAB80;

LAB84:    t4 = (t4 + 1);
    goto LAB82;

LAB85:    xsi_set_current_line(63, ng0);
    t9 = (t0 + 5084);
    t12 = (t0 + 3136);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB77;

LAB87:    t3 = 0;

LAB90:    if (t3 < 4U)
        goto LAB91;
    else
        goto LAB89;

LAB91:    t7 = (t2 + t3);
    t8 = (t1 + t3);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB88;

LAB92:    t3 = (t3 + 1);
    goto LAB90;

}


extern void work_a_0195129674_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0195129674_3212880686_p_0};
	xsi_register_didat("work_a_0195129674_3212880686", "isim/MIPS_testbench_isim_beh.exe.sim/work/a_0195129674_3212880686.didat");
	xsi_register_executes(pe);
}
