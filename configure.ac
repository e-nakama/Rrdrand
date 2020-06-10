#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.63])
AC_INIT([Rrdrand], [0.1-4], [nakama@com-one.com])
AC_CONFIG_SRCDIR([src/config.h.in])
AC_CONFIG_HEADERS([src/config.h])

# Checks for programs.
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([stdlib.h string.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_DEFUN([AX_GCC_X86_CPUID],
[AC_REQUIRE([AC_PROG_CC])
AC_LANG_PUSH([C])
AC_CACHE_CHECK(for x86 cpuid $1 output, ax_cv_gcc_x86_cpuid_$1,
 [AC_RUN_IFELSE([AC_LANG_PROGRAM([#include <stdio.h>], [
     int op = $1, eax, ebx, ecx, edx;
     FILE *f;
      __asm__ __volatile__(".byte 0x0f,0xa2" /* cpuid opcode */
        : "=a" (eax), "=b" (ebx), "=c" (ecx), "=d" (edx)
        : "a" (op));
     f = fopen("conftest_cpuid", "w"); if (!f) return 1;
     fprintf(f, "%x:%x:%x:%x\n", eax, ebx, ecx, edx);
     fclose(f);
     return 0;
])],
     [ax_cv_gcc_x86_cpuid_$1=`cat conftest_cpuid`; rm -f conftest_cpuid],
     [ax_cv_gcc_x86_cpuid_$1=unknown; rm -f conftest_cpuid],
     [ax_cv_gcc_x86_cpuid_$1=unknown])])
AC_LANG_POP([C])
])

AX_GCC_X86_CPUID(1)
if test "$ax_cv_gcc_x86_cpuid_1" = "unknown" ; then
   AC_MSG_ERROR([can not get cpuid.
!!! This package requires an x86 or x86-64 CPU.
!!! and C compiler must be able to compile a GNU-style in-line assembler.
])
else
  AC_DEFINE(HAVE_X86_CPUID, 1, [Have x86 cpuid of instructions.])
fi

ecx=`echo $ax_cv_gcc_x86_cpuid_1 | cut -d ":" -f 3`
AC_LANG_PUSH([C])
AC_MSG_CHECKING([whether this machine support RDRAND instructions])
if test "$((0x$ecx>>30&0x1))" == 1; then
   AC_MSG_RESULT(yes)
   rrdrand_build_machine_status=yes
   
else
   AC_MSG_RESULT(no)
   rrdrand_build_machine_status=no
fi
AC_LANG_POP([C])


#AC_SUBST(HAVE_X86_CPUID)
AC_OUTPUT
