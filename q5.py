'''writte a function to return sum of digit of a number n'''
n=int(input("enter the number"))
def print_sum(n):
    sum=0
    for i in range(n+1):
        sum+=i
    print(sum)
print_sum(n)