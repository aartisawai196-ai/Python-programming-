'''ask the user for a temprature in celcius(string input).convert it to float
then calculate and print temprature in farenhieit'''
temp = input("enter the temprature in celscius")
temp = float(temp)
far =(temp * (9/5)) + 32
print(far)