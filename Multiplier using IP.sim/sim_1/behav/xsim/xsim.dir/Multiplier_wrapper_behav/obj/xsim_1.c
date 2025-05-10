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
IKI_DLLESPEC extern void execute_910(char*, char *);
IKI_DLLESPEC extern void execute_911(char*, char *);
IKI_DLLESPEC extern void execute_912(char*, char *);
IKI_DLLESPEC extern void execute_80(char*, char *);
IKI_DLLESPEC extern void execute_83(char*, char *);
IKI_DLLESPEC extern void execute_901(char*, char *);
IKI_DLLESPEC extern void execute_902(char*, char *);
IKI_DLLESPEC extern void execute_903(char*, char *);
IKI_DLLESPEC extern void execute_899(char*, char *);
IKI_DLLESPEC extern void execute_97(char*, char *);
IKI_DLLESPEC extern void execute_98(char*, char *);
IKI_DLLESPEC extern void execute_99(char*, char *);
IKI_DLLESPEC extern void execute_100(char*, char *);
IKI_DLLESPEC extern void execute_101(char*, char *);
IKI_DLLESPEC extern void execute_893(char*, char *);
IKI_DLLESPEC extern void execute_888(char*, char *);
IKI_DLLESPEC extern void execute_122(char*, char *);
IKI_DLLESPEC extern void execute_143(char*, char *);
IKI_DLLESPEC extern void execute_159(char*, char *);
IKI_DLLESPEC extern void execute_175(char*, char *);
IKI_DLLESPEC extern void execute_191(char*, char *);
IKI_DLLESPEC extern void execute_207(char*, char *);
IKI_DLLESPEC extern void execute_223(char*, char *);
IKI_DLLESPEC extern void execute_239(char*, char *);
IKI_DLLESPEC extern void execute_255(char*, char *);
IKI_DLLESPEC extern void execute_272(char*, char *);
IKI_DLLESPEC extern void execute_283(char*, char *);
IKI_DLLESPEC extern void execute_300(char*, char *);
IKI_DLLESPEC extern void execute_316(char*, char *);
IKI_DLLESPEC extern void execute_332(char*, char *);
IKI_DLLESPEC extern void execute_348(char*, char *);
IKI_DLLESPEC extern void execute_364(char*, char *);
IKI_DLLESPEC extern void execute_380(char*, char *);
IKI_DLLESPEC extern void execute_396(char*, char *);
IKI_DLLESPEC extern void execute_412(char*, char *);
IKI_DLLESPEC extern void execute_429(char*, char *);
IKI_DLLESPEC extern void execute_440(char*, char *);
IKI_DLLESPEC extern void execute_457(char*, char *);
IKI_DLLESPEC extern void execute_473(char*, char *);
IKI_DLLESPEC extern void execute_489(char*, char *);
IKI_DLLESPEC extern void execute_505(char*, char *);
IKI_DLLESPEC extern void execute_521(char*, char *);
IKI_DLLESPEC extern void execute_537(char*, char *);
IKI_DLLESPEC extern void execute_553(char*, char *);
IKI_DLLESPEC extern void execute_569(char*, char *);
IKI_DLLESPEC extern void execute_586(char*, char *);
IKI_DLLESPEC extern void execute_597(char*, char *);
IKI_DLLESPEC extern void execute_614(char*, char *);
IKI_DLLESPEC extern void execute_630(char*, char *);
IKI_DLLESPEC extern void execute_646(char*, char *);
IKI_DLLESPEC extern void execute_662(char*, char *);
IKI_DLLESPEC extern void execute_678(char*, char *);
IKI_DLLESPEC extern void execute_694(char*, char *);
IKI_DLLESPEC extern void execute_710(char*, char *);
IKI_DLLESPEC extern void execute_726(char*, char *);
IKI_DLLESPEC extern void execute_743(char*, char *);
IKI_DLLESPEC extern void execute_782(char*, char *);
IKI_DLLESPEC extern void execute_751(char*, char *);
IKI_DLLESPEC extern void execute_753(char*, char *);
IKI_DLLESPEC extern void execute_755(char*, char *);
IKI_DLLESPEC extern void execute_757(char*, char *);
IKI_DLLESPEC extern void execute_760(char*, char *);
IKI_DLLESPEC extern void execute_762(char*, char *);
IKI_DLLESPEC extern void execute_764(char*, char *);
IKI_DLLESPEC extern void execute_766(char*, char *);
IKI_DLLESPEC extern void execute_768(char*, char *);
IKI_DLLESPEC extern void execute_770(char*, char *);
IKI_DLLESPEC extern void execute_772(char*, char *);
IKI_DLLESPEC extern void execute_774(char*, char *);
IKI_DLLESPEC extern void execute_776(char*, char *);
IKI_DLLESPEC extern void execute_778(char*, char *);
IKI_DLLESPEC extern void execute_780(char*, char *);
IKI_DLLESPEC extern void execute_789(char*, char *);
IKI_DLLESPEC extern void execute_797(char*, char *);
IKI_DLLESPEC extern void execute_803(char*, char *);
IKI_DLLESPEC extern void execute_811(char*, char *);
IKI_DLLESPEC extern void execute_818(char*, char *);
IKI_DLLESPEC extern void execute_824(char*, char *);
IKI_DLLESPEC extern void execute_835(char*, char *);
IKI_DLLESPEC extern void execute_843(char*, char *);
IKI_DLLESPEC extern void execute_851(char*, char *);
IKI_DLLESPEC extern void execute_858(char*, char *);
IKI_DLLESPEC extern void execute_866(char*, char *);
IKI_DLLESPEC extern void execute_871(char*, char *);
IKI_DLLESPEC extern void execute_878(char*, char *);
IKI_DLLESPEC extern void execute_885(char*, char *);
IKI_DLLESPEC extern void execute_892(char*, char *);
IKI_DLLESPEC extern void execute_129(char*, char *);
IKI_DLLESPEC extern void execute_131(char*, char *);
IKI_DLLESPEC extern void execute_133(char*, char *);
IKI_DLLESPEC extern void execute_111(char*, char *);
IKI_DLLESPEC extern void execute_112(char*, char *);
IKI_DLLESPEC extern void execute_107(char*, char *);
IKI_DLLESPEC extern void execute_110(char*, char *);
IKI_DLLESPEC extern void execute_906(char*, char *);
IKI_DLLESPEC extern void execute_907(char*, char *);
IKI_DLLESPEC extern void execute_908(char*, char *);
IKI_DLLESPEC extern void execute_909(char*, char *);
IKI_DLLESPEC extern void execute_913(char*, char *);
IKI_DLLESPEC extern void execute_914(char*, char *);
IKI_DLLESPEC extern void execute_915(char*, char *);
IKI_DLLESPEC extern void execute_916(char*, char *);
IKI_DLLESPEC extern void execute_917(char*, char *);
IKI_DLLESPEC extern void execute_918(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_3(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_5(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[109] = {(funcp)execute_910, (funcp)execute_911, (funcp)execute_912, (funcp)execute_80, (funcp)execute_83, (funcp)execute_901, (funcp)execute_902, (funcp)execute_903, (funcp)execute_899, (funcp)execute_97, (funcp)execute_98, (funcp)execute_99, (funcp)execute_100, (funcp)execute_101, (funcp)execute_893, (funcp)execute_888, (funcp)execute_122, (funcp)execute_143, (funcp)execute_159, (funcp)execute_175, (funcp)execute_191, (funcp)execute_207, (funcp)execute_223, (funcp)execute_239, (funcp)execute_255, (funcp)execute_272, (funcp)execute_283, (funcp)execute_300, (funcp)execute_316, (funcp)execute_332, (funcp)execute_348, (funcp)execute_364, (funcp)execute_380, (funcp)execute_396, (funcp)execute_412, (funcp)execute_429, (funcp)execute_440, (funcp)execute_457, (funcp)execute_473, (funcp)execute_489, (funcp)execute_505, (funcp)execute_521, (funcp)execute_537, (funcp)execute_553, (funcp)execute_569, (funcp)execute_586, (funcp)execute_597, (funcp)execute_614, (funcp)execute_630, (funcp)execute_646, (funcp)execute_662, (funcp)execute_678, (funcp)execute_694, (funcp)execute_710, (funcp)execute_726, (funcp)execute_743, (funcp)execute_782, (funcp)execute_751, (funcp)execute_753, (funcp)execute_755, (funcp)execute_757, (funcp)execute_760, (funcp)execute_762, (funcp)execute_764, (funcp)execute_766, (funcp)execute_768, (funcp)execute_770, (funcp)execute_772, (funcp)execute_774, (funcp)execute_776, (funcp)execute_778, (funcp)execute_780, (funcp)execute_789, (funcp)execute_797, (funcp)execute_803, (funcp)execute_811, (funcp)execute_818, (funcp)execute_824, (funcp)execute_835, (funcp)execute_843, (funcp)execute_851, (funcp)execute_858, (funcp)execute_866, (funcp)execute_871, (funcp)execute_878, (funcp)execute_885, (funcp)execute_892, (funcp)execute_129, (funcp)execute_131, (funcp)execute_133, (funcp)execute_111, (funcp)execute_112, (funcp)execute_107, (funcp)execute_110, (funcp)execute_906, (funcp)execute_907, (funcp)execute_908, (funcp)execute_909, (funcp)execute_913, (funcp)execute_914, (funcp)execute_915, (funcp)execute_916, (funcp)execute_917, (funcp)execute_918, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_3, (funcp)transaction_4, (funcp)transaction_5, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 109;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Multiplier_wrapper_behav/xsim.reloc",  (void **)funcTab, 109);
	iki_vhdl_file_variable_register(dp + 47512);
	iki_vhdl_file_variable_register(dp + 47568);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Multiplier_wrapper_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/Multiplier_wrapper_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 60848, dp + 60144, 0, 15, 0, 15, 16, 1);
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
    iki_set_sv_type_file_path_name("xsim.dir/Multiplier_wrapper_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Multiplier_wrapper_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Multiplier_wrapper_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
