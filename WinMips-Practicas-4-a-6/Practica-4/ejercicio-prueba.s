    ;--------------------------------------------

    ;C)

.data
V:  .word32   5, 2, 6
R:  .word32   0

    .code

    daddi   $t0,    $0,     0   ;resultado
    daddi   $t1,    $0,     3   ;iteraciones
    daddi   $t2,    $0,     0   ;desplazamiento
seguir:
    lw      $t3,    V($t2)
    dadd    $t0,    $t0,    $t3
    daddi   $t2,    $t2,    4
    daddi   $t1,    $t1,    -1
    bnez    $t1,    seguir
    sw      $t0,    R($0)
    halt