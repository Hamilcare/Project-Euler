import math

def diviseurs (nb):
    divisors = []
    somme =0
    for i in range(1, math.floor(nb/2+1), +1):
        if(nb%i ==0):
            divisors.append(i)
            #print(i)
            somme = somme +i
    #print(somme)
    return somme

nb = []
div = []
somme = 0
for i in range(0,10000,+1):
     nb.append(i)
     div.append(diviseurs(i))
for i in range(0,10000,+1):
    for j in range(0,10000,+1):
        if nb[i] == div [j] and nb[j] == diviseurs(i) and nb[i] != nb[j]:
            somme = somme + nb[i]
            
print(somme)
