.data
        result: .word 0

.code
        daddi $a0, $0, 10  ; guardo numero 10 en a0
        daddi $a1, $0, 20  ; guardo numero 20 en a1
        jal sumar
        sd $v0, result($zero)
        halt

sumar:  dadd $v0, $a0, $a1 ; guardo en v0 el resultado de sumar los registros a0 y a1
        jr $ra