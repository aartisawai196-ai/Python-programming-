'''write a function that takes two integers a and b and print all even numbers between them(inclusive)'''
def cal_even(a,b):
 for i in range(a,b):
  if(i%2==0):
   print("all the eeven numbers between the given range",i)
   i+=1
cal_even(1,100+1)
   