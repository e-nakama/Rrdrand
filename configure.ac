#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.72])
AC_INIT([Rrdrand], [0.2-1], [nakama@ki.rim.or.jp])
AC_CONFIG_SRCDIR([src/config.h.in])
AC_CONFIG_HEADERS([src/config.h])

# Checks for programs.
AC_PROG_CC
AC_CANONICAL_HOST

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([stdlib.h string.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_MSG_CHECKING([whether the host architecture is x86/x86_64])
case "${host_cpu-}" in
  i?86*|x86_64*|amd64*)
    AC_MSG_RESULT([yes])
    AC_DEFINE([HAVE_X86_CPUID], [1], [Have x86 cpuid of instructions.])
    ;;
  *)
    AC_MSG_RESULT([no])
    AC_DEFINE([HAVE_X86_CPUID], [0], [Have x86 cpuid of instructions.])
    ;;
esac

#AC_SUBST(HAVE_X86_CPUID)
AC_OUTPUT
