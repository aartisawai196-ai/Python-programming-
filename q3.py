'''write a function that prints the digits od a number,n for eg n=312, there are 3 digit
in it 3,1 and 2 & we nees to print them hunt the rightmost digit of a number N is N%10 and to remove the right 
most digit from a number we can do n=n/10
'''
n=int(input("enter the number"))
def print_digit(n):
    while(n>0):
        last=n%10
        n=n//10
        print(last)
print_digit(n)  
         
