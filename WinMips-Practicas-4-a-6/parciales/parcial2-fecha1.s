    ; .data
    ; DATO:   .word   2

    ;         .code
    ;     daddi   $t0,    $0,         0
    ;     ld      $t1,    DATO($0)
    ;     daddi   $t2,    $0,         4
    ; loop:
    ;     daddi   $t2,    $t2,        -1
    ;     dadd    $t0,    $t0,        $t1
    ;     bnez    $t2,    loop
    ;     halt

    ;-------------------------------------------------

    ;2)

    ; .data

    ; total:      .word   0
    ; valores:    .word   5, 20, 12, 13, 17, 19
    ; impares:    .word   0


    ;             .code

    ;     daddi   $t0,    $0,             6       ;_____________

    ;     dadd    $t1,    $0,             $0      ; desplazamiento vector1
    ;     dadd    $t2,    $0,             $0      ; contador impares
    ;     daddi   $t3,    $0,             impares ; direccion impares
    ;     daddi   $t4,    $0,             1       ; valor comparacion

    ; loop:
    ;     ld      $t5,    valores($t1)
    ;     and     $t6,    $t5,            $t4
    ;     beqz    $t6,    no_es                   ;_____________
    ;     sd      $t5,    0($t3)
    ;     daddi   $t3,    $t3,            8       ;_____________
    ;     daddi   $t2,    $t2,            1
    ; no_es:
    ;     daddi   $t0,    $t0,            -1
    ;     daddi   $t1,    $t1,            8
    ;     bnez    $t0,    loop                    ;_____________
    ;     sd      $t2,    total($t0)
    ;     halt

    ;-------------------------------------------------

    ;3)




    ;-------------------------------------------------

    ;4)

    .data

