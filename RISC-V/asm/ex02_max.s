.section	.start
.global		_start

_start:

init:
	li a0, 8
	li a1, 3

## max program
max:
	blt 	a0, a1, larger	## if a0 < a1 -> larger 
	mv	t1, a0				## if a0 > a1 : max = a0
	j	max
	
larger:						## max = a1
	mv	t1, a1				## larger : x10
	
done:
