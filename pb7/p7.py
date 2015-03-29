import math
def isPrime(n):
    if n==1:
        return False
    for i in range (2,int(math.ceil(math.sqrt(n)))+1):
        if(n%i==0):
            return False
    return True

i=2
nb=1
while nb!=10001:
    if isPrime(i):
        nb+=1
    i+=1
print(str(i-1))
