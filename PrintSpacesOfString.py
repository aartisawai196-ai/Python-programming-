'''
create a program that takes a string input from user and prints number of spaces in string
'''
str=input("enter the string")
c=0
for ch in str:
    if(ch==" "):
        c+=1
print(f"number of spaces in string is {c}")