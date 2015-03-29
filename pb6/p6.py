def somme(n):
    somme=0
    sumOfSquare=0
    squareOfSum=0
    for i in range(n):
        sumOfSquare = sumOfSquare + i*i
        squareOfSum = squareOfSum +i
        
    squareOfSum = squareOfSum*squareOfSum

    print(sumOfSquare)
    print(squareOfSum)

    return squareOfSum - sumOfSquare

print(somme(101))
