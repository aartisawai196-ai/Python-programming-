#write a program that takes salary as input using conditional statement calculate
#the final tax rate based on these rules
'''If salary<30000->5%
If salary<30000-70000->15%
If salary<70000->25%
'''
salary=int(input("enter the salary"))
if(salary<30000):
    print("tax rate is 5%")
elif(salary>=30000 and salary<=70000):
    print("tax rate is 15%")
elif(salary>70000):
    print("tax rate is 25%")
