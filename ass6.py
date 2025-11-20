'''write a program to swap values of two numbers entered by the users'''

a = int(input("enter the value 1"))
b = int(input("enter the value 2"))
temp = a
a = b
b = temp
print(a,b)