set PMP_PROJECT_GROUP_ID=org.c64pectre
set PMP_PROJECT_ARTIFACT_ID=gnux
set PMP_PROJECT_ARTIFACT_VERSION=1.0.0-SNAPSHOT
set PMP_PROJECT_PACKAGING=d64
set PMP_PROJECT_MODULES=boot sh
rem boot must be the first module in order for autostart to work.

set PMP_PACKAGER=d64
set PMP_PACKAGER_DXX_ADDITIONAL_WRITES=

set PMP_RUNNER=x64sc
set PMP_RUNNER_X64SC_OPTIONS=-drive8type 1541 -moncommands .\boot\target\boot.vice-labels -moncommands .\sh\target\sh.vice-labels -moncommands %VICE_LIB%\c64-kernal-r3-serial.vice-labels
