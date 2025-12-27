'''create a tuple of integers and create tuple of all even numbers
and create tuple of all odd numbers
'''
t=(1,2,3,4,5,6,8,9,10)
even=()
odd=()
for i in t:
    if(i%2==0):
        even+=(i,)
    else:
        odd+=(i,)
print(even)
print(odd)