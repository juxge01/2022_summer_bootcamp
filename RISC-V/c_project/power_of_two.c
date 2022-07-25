// power of two(hex)

int main()
{
	int n=1, a=1;

	while(n<10)
	{
		a = 2*a;
		n+=1;
		printf("%d\n", a);
	}
	printf("\n\n%d", a);
 }

//	a = 1 / a : 2 4 8 16 32 64 128 256 512
//	Last a : 512