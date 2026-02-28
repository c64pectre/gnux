# Technical Notes

## Detecting device not present

The Kernal routine `chkin` sends a `talk` (along with talk secondary) on the serial bus and it then
expects a device on the bus to pull the serial clock low. If there is no device present, this will
take forever  --- the system basically hangs.

To detect if a device is present, you need to output on the serial bus with `chkout`, i.e. with a
`listen`, then proceed if OK (carry is clear), with a `clrchn` and `chkin`.

Alternatively, you can use the lower level routines to check if a serial bus device is present:

    lda # DEVICE
    jsr listen          ; A+
    lda # SECONDARY
    jsr second          ; A+
    ldx status          ; A+
    jsr unlsn           ; A+
    cpx # $40
    beq THEN_DEVICE_PRESENT
    bne ELSE_DEVICE_NOT_PRESENT


This means that `open` with a non-empty file name set with `setnam` will detect a device not
present, because `open` does `listen`. On the other hand, `open` without a filename will not.

## `chkin` and `chkout`

`chkin` (talking) can fail when the same device is already selected for output with `chkout` (listening).
You need to `clrchn` before calling `chkin`.

Dunno, seems to work fine with me without calling `clrchn`.

## Do not use `clall`

Do not use `clall`, it does not really close the open files.
