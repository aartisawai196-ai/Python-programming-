'''ask the user for a string and check whether it is palindrome
or not'''
s=input("enter string")
rev=""
for ch in s:
    rev=ch+rev
if(s==rev):
    print("string is palindrome")
else:
    print("not")