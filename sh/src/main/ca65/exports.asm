;    gnux: Boot.
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

.include "cpu-6502.export.asm"
.include "cpu-6510.export.asm"

.include "c64/kernal-r3.export.asm"
.include "c64/kernal-r3-internal.export.asm"
.include "c64/basic-internal.export.asm"
.include "c64/memory-map.export.asm"
.include "c64/vic.export.asm"
.include "c64/cia-2.export.asm"
.include "c64/registers.export.asm"
.include "c64/frame-registers.export.asm"

.include "abi.export.asm"
