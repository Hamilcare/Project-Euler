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
            



div = []
somme = 0;
for i in range(0, 1000, +1):

    div.append(diviseurs(i))
for i in range(1, 1000, +1):
    j = div[i]
    
    if i!=j and j < 1000 and i==div[j] :
        print(i)
        somme = somme + i
        #print(somme)
        print(div[j])
print(somme)
            
        
               

            
