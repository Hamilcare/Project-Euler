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

tabAbundant = []
for i in range(1,math.floor(28124),+1):
    if i<diviseurs(i):
        tabAbundant.append(i)
print (len(tabAbundant))




somme = 0


for i in range(0,24,+1):
     somme = somme +i

for i in range (24,1000,+1):
    if(i%100==0):
        print(i/28123*100)
    if True :
        Trouv2=False        
        j=0
        while(j<len(tabAbundant) and tabAbundant[j]<=i and Trouv2==False ):
            k=0
            while(k <len(tabAbundant) and tabAbundant[k]<=i and Trouv2==False):
                if(tabAbundant[j] + tabAbundant[k] == i):
                    Trouv2=True
                    #print(i)
                k+=1;
            j+=1
        if Trouv2 == False:
            somme =somme +i
        

print(somme)




   



