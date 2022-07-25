## grade with score average program
## s0 : a, s1 : b, a0 : amount	
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
		add a0, s0, s1		# a0 = s0 + s1
		div a1, a0, a4		# a1 = a0 / 2

L0:
		addi t0, zero, 95	
		bge  t0, a1, L1 		
		addi a2, zero, 1 	
		j done 				
L1:
		addi t0, zero, 90 	
		bge  t0, a1, L2  	
		addi a2, zero, 2 	
		j done 		
L2:
		addi t0, zero, 80 		
		bge  t0, a1, L3	 		
		addi a2, zero, 3		
		j done			
L3:
        addi t0, zero, 70 		
		bge  t0, a1, default 		
		addi a2, zero, 4		
		j done				
default:
		addi a2, zero, 9 		
done:           
		mv t5,a2             	

