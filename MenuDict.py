'''create a dictionary where keys are name and values are marks(integers)
write a menu based program where user presses a key ('A','B','C','D')
1]A=add student
2]B-update marks
3]C=search for a student
4]D=display all
'''
dict={
    "Aarti":70,
    "Ashwini":80,
    "sakshi":90,
    "kanchan":85
}
while True:
    print("\n-------MENU--------\n")
    print("A. Add Student")
    print("B. udate marks")
    print("C. search student")
    print("D. display all")
    print("E. Exit")

    ch= input("enter your choice").upper()

    if ch=='A':
        name=input("enter name to add")
        mark=int(input("enter marks"))
        dict[name]=mark
        print("student added")
    elif ch=='B':
        name=input("enter name update marks")
        mark=int(input("enter marks"))
        dict[name]=mark
        print("smarks udated")
    elif ch=='C':
        name=input("enter name to search")
        if name in dict:
            print(f"student found {dict[name]}")
    elif ch=='D':
        print(dict.items())
    elif ch=='E':
        print("exit")
        break