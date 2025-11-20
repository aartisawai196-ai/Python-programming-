'''the user enters the string containing a number (e.g"45")
cobnvert it to an integer ,a float ,a string print all three values with thier types'''

num = input("enter the string")
inint = int(num)
infloa = float(num)
instr = str(num)
print(type(inint),inint,type(infloa),infloa,type(instr),instr)