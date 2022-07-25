# power of two(hex)
#
# main()
# {
#	int n=1, a=1;
#	while(n<10)
#	{
#		a = 2*a;
#		n+=1;
#		printf("%d\n", a);
#	}
#	printf("\n\n%d", a);
# }
#
#	a = 1 / a : 2 4 8 16 32 64 128 256 512
#	Last a : 512
#

.section    .start
.global     _start

_start:

# t0 : n, t1 : a, t5 : last a
init:
	li	t0, 1			## n = 1
	li	t1, 1			## a = 1
	li	t4, 1			## shift left 2
	
Square:
	addi	t2, t0, -10		## t2 = n - 10
	bge	t2, zero, done		## if (t2 >= 0) go to done
	sll	t1, t1, t4		## t1 = t1 << 1 
					## a = 2*a
	addi	t0, t0, 1		## n = n + 1
	j Square
	
done: mv t5, t1				## last a is storeed in t5

#	a = 0x01 / a : 0x02 0x04 0x8 0x10 0x20 0x40 0x80 0x100 0x200
#	Last a : 0x200