.data
A:  .word   4
B:  .word   2
C:  .word   0


    .code
    ld      $t0,    A($0)
    ld      $t1,    B($0)


    beqz     $t0,    esIgual

    slt     $t3,    $t1,            $t0     ; comparo si (B < A) --> true = 1, false = 0
    bnez    $t3,    mayorOigual

    daddi   $t5,    $0,             2
    dmul    $t6,    $t0,            $t5
    sd      $t6,    C($0)
    j       fin

mayorOigual:
    sd      $t1,    C($0)
    j       fin

esIgual:
    sd      $0,    C($0)
fin:
    halt




