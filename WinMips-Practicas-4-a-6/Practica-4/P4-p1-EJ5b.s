.data
A:  .word   4
B:  .word   2
c:  .word   0
P:  .word   0
D:  .word   0


    .code
    ld      $t0,    A($0)
    ld      $t1,    B($0)
    ld      $t2,    c($0)

    slti    $t3,    $t0,        0
    beqz    $t3,    esIgual

esIgual:
    daddi   $t4,    $0,         0
    sd      $t4,    c($0)

    slt     $t3, $t1, $t0
    bnez    $t3  

fin:
    halt








