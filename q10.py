'''lets create a "Number guessing game" given a secret number enter by user (already decided by you)
write a program that asks the user to guess it and prints
1}Too high(if guess is above the number)
2}Too low(if guess is below the number)
3}correct(if gusess matches)'''
n=int(input("enter no"))
guess=int(input("enter guess no"))
if (n==guess):
    print("correct......!!!!!!!!!!!!")
elif(n<guess):
    print("tooo high")
elif(n>guess):
    print("tooo low")
else:
    print("invalid guess")
