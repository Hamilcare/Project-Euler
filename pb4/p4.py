def isPalindrome(n):
    m=str(n)
    m=m[::-1]
    return m==str(n)


res = 0
for i in range (999,99,-1):
    for j in range (999,99,-1):
        if isPalindrome(i*j) and i*j>res:
            res = i*j
print (res)

    
