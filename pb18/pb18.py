pyrabide = open('pyrabide.txt','r')


buffer=pyrabide.read()
buffer = buffer.split("\n")
tab = []
print(buffer)
    
for j in range(len(buffer)):
    buffer[j] = buffer[j].split(" ")
    #print (buffer[j])
#print(len(buffer))
compteur = 0

for i in range(98,-1,-1):
    for j in range(len(buffer[i])):
        sommeGauche = int(buffer[i+1][j]) + int(buffer[i][j])
        #print ("Somme de gauche = " +str(buffer[i+1][j]) +" + "+str(buffer[i][j])+ " = "+str(sommeGauche))
        sommeDroite =int(buffer[i+1][j+1]) + int(buffer[i][j])
        #print ("Somme de droite = "+str(buffer[i+1][j+1])+" + "+str(buffer[i][j])+ " = "+str(sommeDroite))
        buffer[i][j] = max(sommeGauche,sommeDroite)
        compteur +=1
    
#for j in range(len(buffer)):
    #print (buffer[j])
print(buffer[0][0]) 
print(compteur)
    
