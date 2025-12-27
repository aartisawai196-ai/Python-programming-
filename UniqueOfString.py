'''
ask the user for  a string and print
1]all the unique elements of that string
2]count of all unique elements
'''
str=input("enter the string")
c=0
for ch in str:
    if str.count(ch)==1:
        print(ch)
        c+=1
print(f"count of unique elements are{c}")