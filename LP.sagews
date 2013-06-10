︠ac8fce1d-14fa-4dff-b69f-9efe9a3c5993︠
load("LPTutorial.sage")
︡1d71a78a-4c01-4138-902b-4dba8dca5b78︡
︠8dcb2b54-629e-4e18-9f7c-2142c8a54f33︠
variables = var('x,y,z')
ob = 5 * x + 4 * y + 3 * z
con = [2*x+3*y+z <= 5, 4*x+y+2*z <= 11, 3*x+4*y+2*z <= 8]
#optional keywords: maxmize = False if your LP is minimizing the objective function
#tut = True if you want tutorial mode on, extra output
asd = LPTutSolver(variables,ob,con)
︡cb9faaa4-03d9-4b9d-ab25-3ef6d54827d8︡{"stdout":"Initial:\n[ 2  3  1  1  0  0| 5]\n[ 4  1  2  0  1  0|11]\n[ 3  4  2  0  0  1| 8]\n[-----------------+--]\n[ 5  4  3  0  0  0| 0]\n"}︡
︠d0bdb14e-ed85-435d-8cd9-fd64b530c3a0︠
asd.solver()
︡58b5b522-f65a-423a-869a-0363237619ba︡{"stdout":"[  1   2   0   2   0  -1   2]\n[  0  -5   0  -2   1   0   1]\n[  0  -1   1  -3   0   2   1]\n[  0  -3   0  -1   0  -1 -13]\nThe optimal solution to the Primal is:\nx = 2\ny = 0\nz = 1\nThe maximum objective value of the Primal is:\n13\n"}︡
︠edb99a75-4190-49f8-9443-d6d6238ce068︠
asd.toggleTut() #Turn on/off tutorial mode
︡602b3f8c-d49e-41b5-9b54-107a423fc444︡
︠66d68e7d-8e31-4977-a2b2-36c000209289︠
asd.solver()
︡f7cc3334-96bb-415d-82d1-e750b170524a︡{"stdout":"Iteration #1\nindex of pivotrow: 0\nindex of pivotcol: 0\nratios are: [5/2, 11/4, 8/3]\na: []\nalpha: 2\nb: [4, 3, 5]\nGaussian elimination matrix: \n[ 1/2    0    0    0]\n[  -2    1    0    0]\n[-3/2    0    1    0]\n[-5/2    0    0    1]\nA feasible solution of the Primal is:\nx = 5/2\ny = 0\nz = 0\nThe objective value of the feasible solution is:\n25/2\n\nIteration #2\nindex of pivotrow: 2\nindex of pivotcol: 2\nratios are: [5, 'b/Zero', 1]\na: [1/2, 0]\nalpha: 1/2\nb: [1/2]\nGaussian elimination matrix: \n[ 1  0 -1  0]\n[ 0  1  0  0]\n[ 0  0  2  0]\n[ 0  0 -1  1]\n[  1   2   0   2   0  -1   2]\n[  0  -5   0  -2   1   0   1]\n[  0  -1   1  -3   0   2   1]\n[  0  -3   0  -1   0  -1 -13]\nThe optimal solution to the Primal is:\nx = 2\ny = 0\nz = 1\nThe maximum objective value of the Primal is:\n13\n"}︡
︠af5eb1c7-67c8-4230-8d02-20d650f39d11︠
