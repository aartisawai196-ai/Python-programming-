'''write a program that prints all number from 1 to 100 that are divisible by both 3 and 5'''
for i in range(1,100+1):
    if(i%3==0 and i%5==0):
        print(i)
    