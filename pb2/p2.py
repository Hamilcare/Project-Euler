def fibo(n):
    x=0
    y=1
    res=0
    while n>1:
        res = x +y
        x = y
        y = res
        n-=1
    return res

somme=0
n=0
while fibo(n)<4000000:
    if fibo(n)%2==0:
        somme += fibo(n)
    n+=1
    
print(somme)
    
