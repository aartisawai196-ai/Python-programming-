'''ask the user for principal(p),rate(r),time t.convert all to
 float and compute simple interest SI=(P*R*T)/100'''
principal = int(input("enter principal"))
rate= int(input("enter rate"))
time = int(input("enter time"))
principal =float(principal)
rate = float(rate)
time = float(time)
si = (principal * rate * time)/100
print(si)