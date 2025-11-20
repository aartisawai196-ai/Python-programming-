'''take a decimal number as input (like 45.78) and output its
integer par-45 and fractional part'''
num=float(input("enter the decimal number"))
numint=int(num)
numfractional=num-numint
print("intger part-",num)
print("fractional  part-",numfractional)