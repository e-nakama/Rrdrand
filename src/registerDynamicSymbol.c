#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>

/// @brief Registers the native routines of the Rrdrand package and specifies that dynamic symbols should be used
/// @param info Pointer to a DllInfo structure that contains information about the DLL being loaded 
void R_init_Rrdrand(DllInfo* info) {
  R_registerRoutines(info, NULL, NULL, NULL, NULL);
  R_useDynamicSymbols(info, TRUE);
}
