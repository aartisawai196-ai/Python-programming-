'''given a list of integers compute the average of all numbers in the list'''
l=[1,2,3,4,5,6,7]
sum=0
for i in l:
    sum+=i
    avg=sum/7
print(f"average is {avg}")