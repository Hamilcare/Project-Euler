def isTriangle(somme):
    resul=0
    i=0
    while resul < somme:
        resul = resul +i
        i+=1
    return resul == somme

words = open('words.txt','r')
print (words)
buffer = words.read()
tab = []
buffer = buffer.replace("\"","")
#print (buffer)
buffer = buffer.split(",")
#buffer = ['SKY']
#print(buffer)
for i in range(len(buffer)):
    somme = 0
    #print (buffer[i]+"\n")
    for j in range(len(buffer[i])):
        
        somme = somme + ord(buffer[i][j])
        
    somme = somme - 64*len(buffer[i])
    if isTriangle(somme)==True:
        tab.append(somme)

print (len(tab))
    
        
    
