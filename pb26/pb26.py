def lengthCycle(nb):
    reste = 10
    i = 0

    
    while reste != 10 or i<1:
        reste = (reste % nb) * 10
        i += 1

    return i

longest = 0

for i in range(2, 100000):
    if i%2 != 0 and i%5!=0:
        length = lengthCycle(i)
        if length > longest:
            longest = length
            resultat = i

print(resultat)
