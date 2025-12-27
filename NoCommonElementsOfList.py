'''
write a program to check wheteher two list share no common elements
using sets
'''
l1=[1,2,3,4,5]
l2=[6,7,8]
if set(l1).isdisjoint(l2):
    print(f"two list share no common elements")
else:
     print(f"two list share some common elements")