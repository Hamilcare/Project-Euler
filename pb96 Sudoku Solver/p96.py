import re
import copy
import time

class Sudoku:
    def __init__(self):
        self.matrix = list()
        for i in range (9):
            self.matrix.append(list())
            for j in range(9):
                self.matrix[i].append(-1)
        
                
    def possible(self, c):
        pos = set(list(range(1,10)))
        pos = pos - self.possibleLigne(c[0])
        pos = pos - self.possibleColonne(c[1])
        pos = pos - self.possibleSquare(c[0],c[1])
        return list(pos)

    def possibleLigne(self, x):
        tab=[]
        for i in range(9):
           if (self.matrix[x][i] != -1) and (self.matrix[x][i] != 0) and not self.matrix[x][i] in tab:
               tab.append(self.matrix[x][i])
        return set(tab)

    def possibleColonne(self, y):
        tab=[]
        for i in range(9):
            if (self.matrix[i][y] != -1) and (self.matrix[i][y] != 0) and not self.matrix[i][y] in tab:
               tab.append(self.matrix[i][y])
        return set(tab)

    def possibleSquare(self, x, y):
        tab=[]
        xTop= x - x%3
        yTop= y - y%3
        for i in range(xTop,xTop+3):
            for j in range(yTop,yTop+3):
                if (self.matrix[i][j] != -1) and (self.matrix[i][j] != 0) and not self.matrix[i][j] in tab:
                    tab.append(self.matrix[i][j])
        return set(tab)

    def loadMatrix(self, rawMatrix):
        rawMatrix = rawMatrix.split("\n")
        #print (len(rawMatrix))
        for i in range(9):
            for j in range(0,9,+1):
                self.matrix[i][j] = int(rawMatrix[i][j])

    def init(self,f):
        self.loadMatrix(f)
        return self.solve()

    

    def trouveCaseVide(self):
        res = list()
        for i in range(9):
            for j in range(9):
                if(self.matrix[i][j])==0:
                    res.append(i)
                    res.append(j)
                    return res
        res.append(-1)
        return res

    def trouveBonneCase(self):
        
        res = [-1,-1]
        t=10
        
        for i in range(9):
            for j in range(9):
                c = list()
                c.append(i)
                c.append(j)
                
                if self.matrix[i][j]==0 :
                    q = len(self.possible(c))
                    if q<t:
                        t = q
                        res=list()
                        res.append(i)
                        res.append(j)
      
        return res
        
                

        
    def solve(self):
        
        c=self.trouveBonneCase()
        if c[0]==-1:
            return self

        lol = self.possible(c)
        if len(lol)==0:
            return None

        for i in range(len(lol)):
            s2 = copy.deepcopy(self)
            s2.matrix[c[0]][c[1]]=lol[i]
            marche=s2.solve()
            if marche != None:
                return marche
        
        
                    

    def __str__(self):
        s = ""
        for i in range(len(self.matrix)):
            s += str(self.matrix[i]) + "\n" 
        s += "\n\n\n"
        return s
        
            
s = Sudoku()
#print(s)
a = time.time()   
l = (re.compile("Grid [0-9]*\n").split(open('p096_sudoku.txt').read()))[1:]

for i in range(len(l)):
#for i in range(7):
  print("Grid "+str(i))
  s = Sudoku()
  s = s.init(l[i])

  print(s)


b = time.time()

print(str(b-a))
    
