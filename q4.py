#write a function to return the count of the number of digit in a number n
def dcount(n):
   cnt=0
   n=str(n)
   for digit in n:
      cnt+=1
      return cnt
   
   print("digit count is",dcount(123467889))
   