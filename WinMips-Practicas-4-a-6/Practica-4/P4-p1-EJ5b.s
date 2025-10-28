.data
A:  .word   4
B:  .word   2
c:  .word   0


    .code
    ld      $t0,    A($0)
    ld      $t1,    B($0)


    beq     $t0,    $0,             esIgual

    slt     $t3,    $t1,            $t0     ; comparo si (B < A) --> true = 1, false = 0
    beqz    $t3,    mayorOigual

    daddi   $t5,    $0,             2
    dmul    $t5,    $t0,            $t5
    sd      $t5,    C($0)

mayorOigual:
    sd      $t1,    C($0)
    j       fin

esIgual:
    daddi   $t4,    $0,             0
    sd      $t4,    c($0)
fin:
    halt




