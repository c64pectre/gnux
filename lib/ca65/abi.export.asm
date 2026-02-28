;    abi: gnux application binary interface
;    Copyright (C) 2026 C64PECTRE
;
;    This program is free software: you can redistribute it and/or modify
;    it under the terms of the GNU General Public License as published by
;    the Free Software Foundation, either version 3 of the License, or
;    (at your option) any later version.
;
;    This program is distributed in the hope that it will be useful,
;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;    GNU General Public License for more details.
;
;    You should have received a copy of the GNU General Public License
;    along with this program.  If not, see https://www.gnu.org/licenses/.
;
;    Contact: https://github.com/c64pectre/gnux/ create an issue

.export GNUX_SYS_DEVICE         := $0334
.export GNUX_WORK_DEVICE        := $0335
.export GNUX_IN_LA              := $0336    ; 0: keyboard
.export GNUX_OUT_LA             := $0337    ; 0: screen

;;; summary: Argument count
.export GNUX_ARGC               := $033C
.export GNUX_ARGC_LO            := GNUX_ARGC + 0
.export GNUX_ARGC_HI            := GNUX_ARGC + 1

;;; summary: Argument values: pointer to array of ZSTRING
.export GNUX_PARGV              := $033E
.export GNUX_PARGV_LO           := GNUX_PARGV + 0
.export GNUX_PARGV_HI           := GNUX_PARGV + 1
