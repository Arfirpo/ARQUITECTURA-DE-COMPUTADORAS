.data
F:  .word   1
I:  .word   1
N:  .word   5

    .code

    ld      $t0,    F($0)
    ld      $t1,    I($0)
    ld      $t2,    N($0)

seguir:
    slt     $t5,    $t2,    $t1
    bnez    $t5,    fin

    dmul    $t0,    $t0,    $t1
    daddi   $t1,    $t1,    1
    j       seguir


fin:
    sd      $t0,    F($0)
    halt
