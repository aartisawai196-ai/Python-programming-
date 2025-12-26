'''write a program to continously input anumber n from user & prints if it is positive or negative until the user enters quit'''
while True:
    n=(input("enter the number or quit"))
    if(n=="quit"):
        print("stopped")
        break
    n=int(n)
    if(n>0):
        print("positive")
    else:
        print("negative")
