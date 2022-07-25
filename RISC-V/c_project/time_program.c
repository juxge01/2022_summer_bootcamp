// time program

int main() {
    int num = 100;
    int hour, minute;

    if (num >= 60) {
        hour = num / 60;
        minute = num % 60;
    } 
    else
        minute = num;

    printf("%d : %d\n", hour, minute);
}