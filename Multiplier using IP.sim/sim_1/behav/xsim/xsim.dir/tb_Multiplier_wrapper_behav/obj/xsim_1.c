/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_906(char*, char *);
IKI_DLLESPEC extern void execute_915(char*, char *);
IKI_DLLESPEC extern void execute_916(char*, char *);
IKI_DLLESPEC extern void execute_917(char*, char *);
IKI_DLLESPEC extern void execute_912(char*, char *);
IKI_DLLESPEC extern void execute_913(char*, char *);
IKI_DLLESPEC extern void execute_914(char*, char *);
IKI_DLLESPEC extern void execute_81(char*, char *);
IKI_DLLESPEC extern void execute_84(char*, char *);
IKI_DLLESPEC extern void execute_902(char*, char *);
IKI_DLLESPEC extern void execute_903(char*, char *);
IKI_DLLESPEC extern void execute_904(char*, char *);
IKI_DLLESPEC extern void execute_900(char*, char *);
IKI_DLLESPEC extern void execute_98(char*, char *);
IKI_DLLESPEC extern void execute_99(char*, char *);
IKI_DLLESPEC extern void execute_100(char*, char *);
IKI_DLLESPEC extern void execute_101(char*, char *);
IKI_DLLESPEC extern void execute_102(char*, char *);
IKI_DLLESPEC extern void execute_894(char*, char *);
IKI_DLLESPEC extern void execute_889(char*, char *);
IKI_DLLESPEC extern void execute_123(char*, char *);
IKI_DLLESPEC extern void execute_144(char*, char *);
IKI_DLLESPEC extern void execute_160(char*, char *);
IKI_DLLESPEC extern void execute_176(char*, char *);
IKI_DLLESPEC extern void execute_192(char*, char *);
IKI_DLLESPEC extern void execute_208(char*, char *);
IKI_DLLESPEC extern void execute_224(char*, char *);
IKI_DLLESPEC extern void execute_240(char*, char *);
IKI_DLLESPEC extern void execute_256(char*, char *);
IKI_DLLESPEC extern void execute_273(char*, char *);
IKI_DLLESPEC extern void execute_284(char*, char *);
IKI_DLLESPEC extern void execute_301(char*, char *);
IKI_DLLESPEC extern void execute_317(char*, char *);
IKI_DLLESPEC extern void execute_333(char*, char *);
IKI_DLLESPEC extern void execute_349(char*, char *);
IKI_DLLESPEC extern void execute_365(char*, char *);
IKI_DLLESPEC extern void execute_381(char*, char *);
IKI_DLLESPEC extern void execute_397(char*, char *);
IKI_DLLESPEC extern void execute_413(char*, char *);
IKI_DLLESPEC extern void execute_430(char*, char *);
IKI_DLLESPEC extern void execute_441(char*, char *);
IKI_DLLESPEC extern void execute_458(char*, char *);
IKI_DLLESPEC extern void execute_474(char*, char *);
IKI_DLLESPEC extern void execute_490(char*, char *);
IKI_DLLESPEC extern void execute_506(char*, char *);
IKI_DLLESPEC extern void execute_522(char*, char *);
IKI_DLLESPEC extern void execute_538(char*, char *);
IKI_DLLESPEC extern void execute_554(char*, char *);
IKI_DLLESPEC extern void execute_570(char*, char *);
IKI_DLLESPEC extern void execute_587(char*, char *);
IKI_DLLESPEC extern void execute_598(char*, char *);
IKI_DLLESPEC extern void execute_615(char*, char *);
IKI_DLLESPEC extern void execute_631(char*, char *);
IKI_DLLESPEC extern void execute_647(char*, char *);
IKI_DLLESPEC extern void execute_663(char*, char *);
IKI_DLLESPEC extern void execute_679(char*, char *);
IKI_DLLESPEC extern void execute_695(char*, char *);
IKI_DLLESPEC extern void execute_711(char*, char *);
IKI_DLLESPEC extern void execute_727(char*, char *);
IKI_DLLESPEC extern void execute_744(char*, char *);
IKI_DLLESPEC extern void execute_783(char*, char *);
IKI_DLLESPEC extern void execute_752(char*, char *);
IKI_DLLESPEC extern void execute_754(char*, char *);
IKI_DLLESPEC extern void execute_756(char*, char *);
IKI_DLLESPEC extern void execute_758(char*, char *);
IKI_DLLESPEC extern void execute_761(char*, char *);
IKI_DLLESPEC extern void execute_763(char*, char *);
IKI_DLLESPEC extern void execute_765(char*, char *);
IKI_DLLESPEC extern void execute_767(char*, char *);
IKI_DLLESPEC extern void execute_769(char*, char *);
IKI_DLLESPEC extern void execute_771(char*, char *);
IKI_DLLESPEC extern void execute_773(char*, char *);
IKI_DLLESPEC extern void execute_775(char*, char *);
IKI_DLLESPEC extern void execute_777(char*, char *);
IKI_DLLESPEC extern void execute_779(char*, char *);
IKI_DLLESPEC extern void execute_781(char*, char *);
IKI_DLLESPEC extern void execute_790(char*, char *);
IKI_DLLESPEC extern void execute_798(char*, char *);
IKI_DLLESPEC extern void execute_804(char*, char *);
IKI_DLLESPEC extern void execute_812(char*, char *);
IKI_DLLESPEC extern void execute_819(char*, char *);
IKI_DLLESPEC extern void execute_825(char*, char *);
IKI_DLLESPEC extern void execute_836(char*, char *);
IKI_DLLESPEC extern void execute_844(char*, char *);
IKI_DLLESPEC extern void execute_852(char*, char *);
IKI_DLLESPEC extern void execute_859(char*, char *);
IKI_DLLESPEC extern void execute_867(char*, char *);
IKI_DLLESPEC extern void execute_872(char*, char *);
IKI_DLLESPEC extern void execute_879(char*, char *);
IKI_DLLESPEC extern void execute_886(char*, char *);
IKI_DLLESPEC extern void execute_893(char*, char *);
IKI_DLLESPEC extern void execute_130(char*, char *);
IKI_DLLESPEC extern void execute_132(char*, char *);
IKI_DLLESPEC extern void execute_134(char*, char *);
IKI_DLLESPEC extern void execute_112(char*, char *);
IKI_DLLESPEC extern void execute_113(char*, char *);
IKI_DLLESPEC extern void execute_108(char*, char *);
IKI_DLLESPEC extern void execute_111(char*, char *);
IKI_DLLESPEC extern void execute_908(char*, char *);
IKI_DLLESPEC extern void execute_909(char*, char *);
IKI_DLLESPEC extern void execute_910(char*, char *);
IKI_DLLESPEC extern void execute_911(char*, char *);
IKI_DLLESPEC extern void execute_918(char*, char *);
IKI_DLLESPEC extern void execute_919(char*, char *);
IKI_DLLESPEC extern void execute_920(char*, char *);
IKI_DLLESPEC extern void execute_921(char*, char *);
IKI_DLLESPEC extern void execute_922(char*, char *);
IKI_DLLESPEC extern void execute_923(char*, char *);
IKI_DLLESPEC extern void transaction_5(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_6(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_7(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[113] = {(funcp)execute_906, (funcp)execute_915, (funcp)execute_916, (funcp)execute_917, (funcp)execute_912, (funcp)execute_913, (funcp)execute_914, (funcp)execute_81, (funcp)execute_84, (funcp)execute_902, (funcp)execute_903, (funcp)execute_904, (funcp)execute_900, (funcp)execute_98, (funcp)execute_99, (funcp)execute_100, (funcp)execute_101, (funcp)execute_102, (funcp)execute_894, (funcp)execute_889, (funcp)execute_123, (funcp)execute_144, (funcp)execute_160, (funcp)execute_176, (funcp)execute_192, (funcp)execute_208, (funcp)execute_224, (funcp)execute_240, (funcp)execute_256, (funcp)execute_273, (funcp)execute_284, (funcp)execute_301, (funcp)execute_317, (funcp)execute_333, (funcp)execute_349, (funcp)execute_365, (funcp)execute_381, (funcp)execute_397, (funcp)execute_413, (funcp)execute_430, (funcp)execute_441, (funcp)execute_458, (funcp)execute_474, (funcp)execute_490, (funcp)execute_506, (funcp)execute_522, (funcp)execute_538, (funcp)execute_554, (funcp)execute_570, (funcp)execute_587, (funcp)execute_598, (funcp)execute_615, (funcp)execute_631, (funcp)execute_647, (funcp)execute_663, (funcp)execute_679, (funcp)execute_695, (funcp)execute_711, (funcp)execute_727, (funcp)execute_744, (funcp)execute_783, (funcp)execute_752, (funcp)execute_754, (funcp)execute_756, (funcp)execute_758, (funcp)execute_761, (funcp)execute_763, (funcp)execute_765, (funcp)execute_767, (funcp)execute_769, (funcp)execute_771, (funcp)execute_773, (funcp)execute_775, (funcp)execute_777, (funcp)execute_779, (funcp)execute_781, (funcp)execute_790, (funcp)execute_798, (funcp)execute_804, (funcp)execute_812, (funcp)execute_819, (funcp)execute_825, (funcp)execute_836, (funcp)execute_844, (funcp)execute_852, (funcp)execute_859, (funcp)execute_867, (funcp)execute_872, (funcp)execute_879, (funcp)execute_886, (funcp)execute_893, (funcp)execute_130, (funcp)execute_132, (funcp)execute_134, (funcp)execute_112, (funcp)execute_113, (funcp)execute_108, (funcp)execute_111, (funcp)execute_908, (funcp)execute_909, (funcp)execute_910, (funcp)execute_911, (funcp)execute_918, (funcp)execute_919, (funcp)execute_920, (funcp)execute_921, (funcp)execute_922, (funcp)execute_923, (funcp)transaction_5, (funcp)transaction_6, (funcp)transaction_7, (funcp)vhdl_transfunc_eventcallback, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 113;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb_Multiplier_wrapper_behav/xsim.reloc",  (void **)funcTab, 113);
	iki_vhdl_file_variable_register(dp + 47880);
	iki_vhdl_file_variable_register(dp + 47936);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb_Multiplier_wrapper_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb_Multiplier_wrapper_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 62264, dp + 61560, 0, 15, 0, 15, 16, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_xsimdir_location_if_remapped(argc, argv)  ;
    iki_set_sv_type_file_path_name("xsim.dir/tb_Multiplier_wrapper_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb_Multiplier_wrapper_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb_Multiplier_wrapper_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
