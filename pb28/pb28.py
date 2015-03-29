somme = 0
compteur = 1
for i in range (3, 1002, +2):
    hautDroite= i*i
    #print(hautDroite)
    hautGauche= i*i-(2*compteur)
    #print(hautGauche)
    basGauche= i*i-(4*compteur)
    #print(basGauche)
    basDroite= i*i-(6*compteur)
    #print(basDroite)
    somme = somme + hautDroite +hautGauche+basGauche+basDroite
    compteur+=1
somme=somme+1
print(somme)
