'''
given a list ,print all elements that appear more than once in the list
using sets
'''
list=[1,2,1,2,3,4,5,6,2,23,4,2,3,2]
dup=set()
seen=set()
for i in list:
    if i in seen:
        dup.add(i)
    else:
        seen.add(i)
print(dup)
print(seen)