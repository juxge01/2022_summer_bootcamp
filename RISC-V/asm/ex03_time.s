.section	.start
.global		_start

_start:

init:
	li a0, 100	## input
	li t0, 60	## 1 hours : 60 minutes

## time program(limit 119 ~ 0)
times:
	bge a0, t0, hour	## if(a0 >= 60) goto hour
	mv t2, a0			## if(a0 < 60) t2(minute) = a0
	j done
	
hour:
	div t1, a0, t0		## t1 = 1 hour
	sub t2, a0, t0		## t2 = 40 minutes
	j times

done:
	
	 	