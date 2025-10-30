.data
L:  .word   0
N:  .word   8


    .code
    ld      $t0,    L($0)
    ld      $t1,    N($0)
    daddi   $t6,    $0,     1

seguir:
    daddi   $t5,    $0,     2
    ddiv    $t1,    $t1,    $t5
    daddi   $t0,    $t0,    1
    slt     $t3,    $t6,    $t1
    beqz    $t3,    fin
    j       seguir


fin:
    sd      $t0,    L($0)
    halt
