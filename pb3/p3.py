import math
def isPrime(n):
    if n==1:
        return False
    for i in range (2,int(math.ceil(math.sqrt(n)))+1):
        if(n%i==0):
            return False
    return True

def largestPrimeFactor(n):
    res = 0
    for i in range(1,n):
        if n%i==0:
            if isPrime(i):
                res = i
                print(res)
    

largestPrimeFactor(600851475143)
            
