    ; A)

.data
A:  .word   4
B:  .word   2
S:  .word   0
P:  .word   0
D:  .word   0


    .code
    ld      $t0,    A($zero)
    ld      $t1,    B($zero)


    dadd    $t2,    $t0,            $t1
    sd      $t2,    S($zero)

    dmul    $t3,    $t0,            $t1
    daddi   $t2,    $t3,            2
    sd      $t2,    P($zero)

    dmul    $t2,    $t0,            $t0
    ddiv    $t2,    $t2,            $t1
    sd      $t2,    D($zero)


    halt


    ;----------------------------------------------------------------

    ; B)

.data
A:  .word   4
B:  .word   2
C:  .word   0


    .code
    ld      $t0,    A($0)
    ld      $t1,    B($0)


    beqz    $t0,    esIgual

    slt     $t3,    $t1,            $t0 ; comparo si (B < A) --> true = 1, false = 0
    bnez    $t3,    mayorOigual

    daddi   $t5,    $0,             2
    dmul    $t6,    $t0,            $t5
    sd      $t6,    C($0)
    j       fin

mayorOigual:
    sd      $t1,    C($0)
    j       fin

esIgual:
    sd      $0,     C($0)
fin:
    halt

    ;----------------------------------------------------------------

    ;C)

.data
F:  .word   1
I:  .word   1
N:  .word   5

    .code

    ld      $t0,    F($0)
    ld      $t1,    I($0)
    ld      $t2,    N($0)

seguir:
    slt     $t5,    $t2,            $t1
    bnez    $t5,    fin

    dmul    $t0,    $t0,            $t1
    daddi   $t1,    $t1,            1
    j       seguir


fin:
    sd      $t0,    F($0)
    halt

    ;----------------------------------------------------------------

    ;D)

.data
L:  .word   0
N:  .word   8


    .code
    ld      $t0,    L($0)
    ld      $t1,    N($0)
    daddi   $t6,    $0,             1

seguir:
    daddi   $t5,    $0,             2
    ddiv    $t1,    $t1,            $t5
    daddi   $t0,    $t0,            1
    slt     $t3,    $t6,            $t1
    beqz    $t3,    fin
    j       seguir


fin:
    sd      $t0,    L($0)
    halt

    ;----------------------------------------------------------------

    ;E)

.data

A:  .word   33
B:  .word   0


    .code
    ld      $t0,    A($0)
    ld      $t1,    B($0)

    andi    $t2,    $t0,            1
    beqz    $t2,    fin
    daddi   $t3,    $t1,            1
    sd      $t3,    B($0)

fin:
    halt

