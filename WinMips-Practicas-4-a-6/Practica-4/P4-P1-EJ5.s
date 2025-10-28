.data
A:  .word   4
B:  .word   2
S:  .word   0
P:  .word   0
D:  .word   0


    .code
ld      $t0,    A($zero)
ld      $t1,    B($zero)


dadd    $t2,    $t0,        $t1
sd      $t2,    S($zero)

dmul    $t3,    $t0,        $t1
daddi   $t2,    $t3,        2
sd      $t2,    P($zero)

dmul    $t2,    $t0,        $t0
ddiv    $t2,    $t2,        $t1
sd      $t2,    D($zero)


halt