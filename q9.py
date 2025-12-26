'''write a function is_prime(n) that returns true if n is a prime and returns false otherwise using loop'''
n=int(input("enter the num"))
def is_prime(n):
    for i in range(2,n):
        if(n%i==0):
            return False
            
    return True
is_prime(n)