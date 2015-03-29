names = open("names.txt",'r')
buffer = names.read()
tab = []
buffer = buffer.replace("\"","")
buffer = buffer.split(",")
buffer.sort()
sommeTotale = 0
sommeLettre = 0
for i in range(len(buffer)):
    sommeLettre =0
    for j in range(len(buffer[i])):
        sommeLettre = sommeLettre + ord(buffer[i][j])
    sommeLettre = sommeLettre - 64*len(buffer[i])
    sommeTotale = sommeTotale + (i+1)*sommeLettre
print (sommeTotale)
    
