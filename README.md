# DevKitVcRedist
NSIS vcredist checker and installer

Check defined VcRedist is installed. If not, install it.

**Usage:**
```
; ------------------------------------------------------
;  VcRedist Configuration
; ------------------------------------------------------
; VcRedist
!define VCREDIST_CONFIG
;!define VCREDIST_OFFLINEMODE
!define	VCREDIST_ROOT			"..\..\..\..\DevKitVcRedist\"
!define VCREDIST_COMMAND		"/q:a"

; Check VcRedist Version
!define VCREDIST2005
!define VCREDIST2010
!define VCREDIST2015

; ------------------------------------------------------
; VcRedist Include
; ------------------------------------------------------
!include "${VCREDIST_ROOT}\VcRedist_check.nsh"
!include "${VCREDIST_ROOT}\lang\VcRedist_langstrings_int.nsh"

; ------------------------------------------------------
; VcRedist Calls
; ------------------------------------------------------
;Reset Counters
Call ResetVCRedistCounter

;In your installer incement counter
IntOp $X64_2005 $X64_2005 + 1
IntOp $X86_2015 $X86_2015 + 1

;Installer VCRedist
Call InstallVCRedist
```
