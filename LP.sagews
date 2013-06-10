︠ac8fce1d-14fa-4dff-b69f-9efe9a3c5993︠
load("LPTutorial.sage")
︡d2cdc935-c2dd-4b6c-89ba-0c712df104bf︡
︠8dcb2b54-629e-4e18-9f7c-2142c8a54f33︠
variables = var('x,y,z')
ob = 5 * x + 4 * y + 3 * z
con = [2*x+3*y+z <= 5, 4*x+y+2*z <= 11, 3*x+4*y+2*z <= 8]
asd = LPTutSolver(variables,ob,con)
︡8ceeacc2-b058-45a1-a564-88ffe09a904b︡{"stdout":"Initial:\n[ 2  3  1  1  0  0| 5]\n[ 4  1  2  0  1  0|11]\n[ 3  4  2  0  0  1| 8]\n[-----------------+--]\n[ 5  4  3  0  0  0| 0]\n"}︡
︠d0bdb14e-ed85-435d-8cd9-fd64b530c3a0︠
asd.solver()
︡c1082111-7065-4166-abb7-d2d314cd2d3c︡{"stdout":"[  1   2   0   2   0  -1   2]\n[  0  -5   0  -2   1   0   1]\n[  0  -1   1  -3   0   2   1]\n[  0  -3   0  -1   0  -1 -13]\n"}︡{"tex":{"tex":"The optimal solution to the Primal is: \nx = 2\ny = 0\nz = 1\nThe maximum objective value of the Primal is: \n13","display":true}}︡
︠edb99a75-4190-49f8-9443-d6d6238ce068︠
a = "a:"
b = "bb"
show(a + b)
︡f1bf4c07-3c5e-4683-b358-021ad7e5837f︡{"tex":{"tex":"a:bb","display":true}}︡
︠2576ddda-1793-4b78-9575-2efcf04a8cef︠
