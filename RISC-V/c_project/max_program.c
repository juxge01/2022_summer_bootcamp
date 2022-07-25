// max program

int main() {
    int num1 = 8, num2 = 3;
    int max = 0;

    if (num1 > num2)
        max = num1;
    else if (num2 > num1)
        max = num2;
    else
        max = -1;
    
    printf("%d\n", max);
}