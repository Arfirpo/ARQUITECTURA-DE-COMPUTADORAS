.data

A:  .word   33
B:  .word   0


    .code
    ld      $t0,    A($0)
    ld      $t1,    B($0)

    andi    $t2,    $t0,    1
    beqz    $t2,    fin
    daddi   $t3,    $t1,    1
    sd      $t3,    B($0)

fin:
    halt
