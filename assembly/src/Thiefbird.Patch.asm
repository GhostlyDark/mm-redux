;==================================================================================================
; Spawn orange rupee
;==================================================================================================

.headersize G_EN_THIEFBIRD_DELTA

; Replaces:
;   jal     0x800A7730
.org 0x80C11EDC
    jal     Thiefbird_RupeeSpawn
