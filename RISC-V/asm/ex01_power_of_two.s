# power of two(hex)
#
# main()
# {
#	int n=1, a=1;
#	while(n<10)
#	{
#		a = 2*a;
#		n+=1;
#	}
# }
#

.section    .start
.global     _start

_start:

# t0 : n, t1: a
init:
	li	t0, 1	## n = 1
	li	t1, 1	## a = 1
	li	t4, 1	## shift left 2
	
Square:
	addi	t2, t0, -10		## t2 = n - 10
	bge	t2, zero, L0		## if (t2 >= 0) go to L0
	
L0:
	sll	t1, t1, t4		## t1 = t1 << 1 
						## a = 2*a
	addi	t0, t0, 1	## n = n + 1
	j Square
	
