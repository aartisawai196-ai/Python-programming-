'''create a calculator that performs arithmetic operations using function calulator it takes three parameter
as input that is calculator(a,b,operation)'''
a=int(input("enter a"))
b=int(input("enter b"))
operation=input("enter operation")
def calculator(a,b,operation):
    if(operation=="+"):
        return a+b
    elif(operation=="-"):
        return a-b
    elif(operation=="*"):
        return a*b
    elif(operation=="/"):
        return a/b
    else:
        print("inavlid operation")
calculator(a,b,operation)
            

