;==================================================================================================
; Item00 Constructor after collectable flag has been checked and processed.
;==================================================================================================

.headersize G_CODE_DELTA

; Replaces:
;   lh      t4, 0x001C (s0)
;   addiu   at, r0, 0x0015
.org 0x800A5E1C
    jal     Item00_Constructor_Hook
    nop

;==================================================================================================
; Give Item
;==================================================================================================

; Replaces:
;   lui     at, 0x801E
;   addu    at, at, t3
;   lw      t3, 0xBF24 (at)
.org 0x800A6E1C
    jal     Item00_GiveItem_Hook
    nop
    nop

;==================================================================================================
; Check if item can be spawned
;==================================================================================================

; Replaces:
;   andi    a0, s0, 0x00FF
;   sll     a0, a0, 16
;   sra     a0, a0, 16
.org 0x800A7984
    or      a0, s2, r0
    or      a1, s0, r0
    nop

; Replaces:
;   jal     0x800A7650
.org 0x800A7994
    jal     Item00_CanBeSpawned