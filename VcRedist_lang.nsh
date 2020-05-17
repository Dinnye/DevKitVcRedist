!define VCREDIST_LANG_DIR		${VCREDIST_ROOT}\lang

!ifndef USE_SPECIFIED_LANGUAGES
	!include "${VCREDIST_LANG_DIR}\VcRedist_langstrings_INT.nsh"
	!include "${VCREDIST_LANG_DIR}\VcRedist_langstrings_GER.nsh"
	!include "${VCREDIST_LANG_DIR}\VcRedist_langstrings_HUN.nsh"
!else
	!ifdef USE_LANG_INT
		!include "${VCREDIST_LANG_DIR}\VcRedist_langstrings_INT.nsh"
	!endif
	!ifdef USE_LANG_GER
		!include "${VCREDIST_LANG_DIR}\VcRedist_langstrings_GER.nsh"
	!endif
	!ifdef USE_LANG_HUN
		!include "${VCREDIST_LANG_DIR}\VcRedist_langstrings_HUN.nsh"
	!endif
	!ifdef USE_LANG_DNK
		!include "${VCREDIST_LANG_DIR}\VcRedist_langstrings_DNK.nsh"
	!endif
	!ifdef USE_LANG_NOR
		!include "${VCREDIST_LANG_DIR}\VcRedist_langstrings_NOR.nsh"
	!endif
	!ifdef USE_LANG_SWE
		!include "${VCREDIST_LANG_DIR}\VcRedist_langstrings_SWE.nsh"
	!endif
!endif
