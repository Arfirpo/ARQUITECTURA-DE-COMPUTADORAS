.data
A:  .word   3
B:  .word   5
C:  .word   0

    .code

    dadd    $t2,    $0,     $0  ; resultado
    ld      $t0,    A($0)       ; cargo 3 en $t0
    ld      $t1,    B($0)       ; cargo 5 en $t1

loop:
    daddi   $t0,    $t0,    -1  ; decremento $t0
    dadd    $t2,    $t2,    $t1 ; sumo 0 + 5
    bnez    $t0,    loop        ; mientras $t0 no sea 0, loop
    
    daddi   $t2,    $t2,    -1  ; resto 5 - 1
    sd      $t2,    C($0)       ; guardo en C el resultado de $t2

    halt

