#include "a4gl_incl_4glhdr.h"
extern int a4gl_lib_status;
static char *_module_name="hello.4gl";


A4GL_MAIN int main(int argc,char *argv[]);
#define fgldate long
static char const _rcsid[]="$FGLIdent: src/hello.4gl Compiler-1.63  Log:Not Set $";
static void a4gl_show_compiled_version(void) {
printf("Log: Not Set\n");
printf("Aubit4GL Version: 1.6.3\n");
exit(0);
}

static const char *_CompileTimeSQLType="nosql";
static const struct sDependantTable _dependantTables[]= {
  {0,0}
};

extern struct {
   long sqlcode ;
   char sqlerrm [72+1];
   char sqlerrp [8+1];
   long sqlerrd[6] ;
   char sqlawarn [8+1];
   char sqlstate [9+1];
} a4gl_sqlca;
extern long a4gl_status ;
extern long aiplib_status ;
extern long curr_form ;
extern long curr_hwnd ;
extern char err_file_name [32+1];
extern long err_line_no ;
extern long err_status ;
extern long int_flag ;
extern long quit_flag ;

static int _done_init_module_variables=1;
A4GL_INTERNAL_FUNCTION static void init_module_variables(void) {
 static void *_objData[]={
NULL};
   if (_done_init_module_variables==0) return;
   _done_init_module_variables=0;
   A4GL_register_module_objects(_module_name, _objData);
   A4GL_check_version(_module_name,"1.6",3);
   A4GL_check_dependant_tables(_module_name, _CompileTimeSQLType, _dependantTables);
   /* Print nullify */
   // Initialise the current global variables
   // No global variables in use
   // Initialise any other global variables
}




A4GL_MAIN int main(int argc,char *argv[]) {
char *_paramnames[1]={""};
void *_blobdata=0;(void) _blobdata;
int _nargs=0;
static char *_functionName = "MAIN";
    void *_objData[]={
   NULL};
   A4GLSTK_setCurrentLine(0,0);
   if (A4GL_fgl_start(argc,argv)) {a4gl_show_compiled_version();}

   init_module_variables();
   /* Print nullify */
   A4GLSTK_initFunctionCallStack();
   A4GLSTK_pushFunction_v2(_functionName,_paramnames,_nargs,_module_name,1,_objData);

   A4GL_clr_ignore_error_list();
   /* CMD : E_CMD_DISPLAY_CMD Line 2 E_MET_MAIN_DEFINITION */
   A4GLSTK_setCurrentLine(_module_name,2);
   aclfgli_clr_err_flg();
   A4GL_push_char("Hello from Aubit4GL");
   A4GL_push_int(-1);
   A4GL_push_int(-1);
   A4GL_display_at(1,0xffffffff);
      ERR_CHK_ERROR  { A4GL_chk_err(2,_module_name); }
   A4GLSTK_popFunction_nl(0, 4);
   A4GL_fgl_end_4gl_0();
   return 0;
}
/* END OF MODULE */
