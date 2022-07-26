## grade with score average program
.section	.start
.global		_start

_start:

## s0 : a, s1 : b
## a0 : total score, a1 : average score	
## a2 : grade
		
init:
		li s0, 100
		li s1, 67  
		li a4, 2		# div 2
		
main:
		add a0, s0, s1		## total score
		div a1, a0, a4		## average score 

L0:                         ## t0 : standard score
		addi t0, zero, 95	## t0 = 95  
        sub  t1, t0, a1	    ## t1 = 95 – a0
        bge  t1, zero, L1   ## if (t1 >= 0) go to L1

		addi a2, zero, 1 	## grade = 1
		j done 				
L1:
		addi t0, zero, 90	## t0 = 90  
        sub  t1, t0, a1	    ## t1 = 90 – a0
        bge  t1, zero, L2   ## if (t1 >= 0) go to L2

		addi a2, zero, 2 	## grade = 2
		j done 		
L2:
		addi t0, zero, 80	## t0 = 80  
        sub  t1, t0, a1	    ## t1 = 80 – a0
        bge  t1, zero, L3   ## if (t1 >= 0) go to L3

		addi a2, zero, 3 	## grade = 3
		j done 				
L3:
		addi t0, zero, 70	## t0 = 70  
        sub  t1, t0, a1	    ## t1 = 70 – a0
        bge  t1, zero, default   ## if (t1 >= 0) go to defalut

		addi a2, zero, 4 	## grade = 4
		j done 					
default:
		addi a2, zero, 9 	## grade = 9	
done:           
		mv t5,a2            ## t5 : final grade            	

