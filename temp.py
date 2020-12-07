import matplotlib.pyplot as plt

BenchCPIs = [ 'speclibm_' + str(i)  for i in range(13)]
BenchCPIs.extend(['specbzip_' + str(i)  for i in range(16)]) 
BenchCPIs.extend(['specsjeng_' + str(i)  for i in range(12)])
BenchCPIs.extend(['specmcf_' + str(i)  for i in range(14)])     
BenchCPIs.extend(['spechmmer_' + str(i)  for i in range(13)])        


CPIs =[2.678020	,2.678059,2.643485,2.643485,2.638252 ,2.637369,2.633691,2.622492,2.622492,2.622492,1.989960,1.654384,1.654755,1.712606,1.673547,1.673150,1.673150,1.637846,1.614752,1.594147,1.689497	,1.675726	,1.620835	,1.620440	,1.619719,1.648521,1.643754,	1.608345,1.613029,7.056530,7.056086	,7.056053	,7.055731	,7.055338	,7.054478	,7.054221	,7.054338	,7.054502	,4.985786	,3.715485	,3.715483,1.099705	,1.097279	,1.097201	,1.095253	,1.093063	,1.091023	,1.095318	,1.094928	,1.094928		,1.077225	,1.072008,1.071926	,1.075348 ,3.675353,5.589006,5.589006	,5.589006	,5.589006	,5.505899	,5.505899,5.505899	,4.430572	,3.867043	,3.675353,3.703423]	

LibmCPI = CPIs[0:13]
bzipCPI = CPIs[13:29]
sjengCPI = CPIs[29:41]
mcfCPI = CPIs[41:55]
hmmerCPI = CPIs[55:66]

"""
dictCPI = {} 
for key in BenchCPIs: 
    for value in CPIs: 
        dictCPI[key] = value 
        CPIs.remove(value) 
        break
"""
    
#print(str(dictCPI))

# Cost function using lamba func

# 16,16,16,1,1,1,64
parametersLibm = [[1,1,32,1,1,2,1],[1,4,32,1,1,2,1],[4,4,32,1,1,2,1],
             [4,8,32,1,1,2,1],[8,8,32,1,1,2,1],[8,8,64,1,1,2,1],
             [8,8,128,1,1,2,1],[8,8,128,2,2,4,1],[8,8,128,4,4,4,1],
             [8,8,128,8,8,8,1],[8,8,128,8,8,8,2],[8,8,128,8,8,8,4],[4,4,64,8,8,8,4]]
             
             
parametersbzip = [[2,2,32,1,1,2,1],[4,2,32,1,1,2,1],[4,4,32,1,1,2,1],[4,8,32,1,1,2,1],[8,8,32,1,1,2,1],[8,8,64,1,1,2,1],[8,8,128,1,1,2,1],
             [2,2,32,2,2,2,1],[2,2,32,4,4,2,1],[8,8,32,4,4,2,1],[8,8,32,4,4,4,1],[8,8,32,4,4,8,1],[8,8,32,1,1,1,1],
             [8,8,32,1,1,1,2],[8,8,32,4,4,4,2],[8,8,32,4,4,4,4]]
             
             
parametersjeng =[[2,4 ,32 ,1 ,1 ,2 ,1],[4 ,4 ,32, 1 ,1 ,2 ,1],[4 ,8, 32, 1, 1 ,2, 1],[8 ,8, 32, 1, 1 ,2, 1],[8 ,8 ,64, 1 ,1 ,2 ,1],[8,8 ,64 ,1, 1, 2, 1],
             [8 ,8 ,128, 2, 2 ,2 ,1],[8 ,8 ,128,4 ,4 ,4 ,1],[8, 8, 128, 8, 8 ,8 ,1],[8, 8 , 128,8 ,8 ,8 ,2],[8 ,8 ,128,8 ,8 ,8 ,4],[4,4,128 ,8 ,8 ,8 ,4]]

parametersmcf = [[2,4,32, 1 ,1 ,2, 1],[4 ,4 ,32, 1, 1, 2, 1],[8, 4, 32, 1 ,1 ,2, 1],[8, 8, 32, 1, 1, 2, 1],
                 [8, 8, 64, 1, 1, 2, 1],[8, 8, 128, 1 ,1, 2 ,1],[8 ,8, 128, 2, 2, 2, 1 ],
                 [8,8,32,4,4,4,1],[8,8,32,8,8,8,1],[8,8,32,8,8,8,1],[8,8,32,4,4,4,2],[8,8,32,4,4,4,4],
                 [8,8,32,8,8,8,4],[4,4,16,8,8,8,4]]

parametershmmer = [[8,4,128,1,1,2,1],
                   [8,8,128,1,1,2,1],[8,8,128,1,1,2,1],[8,8,32,1,1,2,1],
                   [8,8,32,2,2,2,1],[8,8,32,4,4,4,1],[8,8,32,8,8,8,1],[8,8,32,8,8,8,2],[8,8,32,8,8,8,4],
                   [8,8,32,4,4,4,8],[4,4,32,4,4,4,8]]




c = lambda x1,x2,x3,x4,x5,x6,x7 : 2.6*x1 + 2.6*x2 + x3 + 2.6*x4 + 2.6*x5 + x6 + 0*x7
costsLibm = []
costsbzip = []
costsjeng = []
costsmcf = []
costshmmer = []

for x in parametersLibm:
    
    costsLibm.append(c(x[0],x[1],x[2],x[3],x[4],x[5],x[6]))
    
for x in parametersbzip:
    
    costsbzip.append(c(x[0],x[1],x[2],x[3],x[4],x[5],x[6]))
    
for x in parametersjeng:
    
    costsjeng.append(c(x[0],x[1],x[2],x[3],x[4],x[5],x[6]))
    
for x in parametersmcf:
    
    costsmcf.append(c(x[0],x[1],x[2],x[3],x[4],x[5],x[6]))
    
for x in parametershmmer:
    
    costshmmer.append(c(x[0],x[1],x[2],x[3],x[4],x[5],x[6]))
    

    
plt.figure(figsize=(10,6))  
plt.scatter(costsjeng,sjengCPI,c = 'r', label = 'Sjeng')
plt.scatter(costsLibm,LibmCPI, c = 'b', label = 'Libm')
plt.scatter(costsbzip,bzipCPI, c = 'g', label = 'Bzip' )
plt.scatter(costshmmer,hmmerCPI, c = 'k', label = 'Hmmer')
plt.scatter(costsmcf,mcfCPI,c ='y',label= 'Mcf')
plt.ylabel('CPI')
plt.xlabel('Cost in units(u)')
plt.legend()

plt.show()