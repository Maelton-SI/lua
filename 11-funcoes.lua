--[[
    Se a função tiver um unico argumento e esse argumento for uma string literal ou um
    construtor de tabela, entao os parenteses tornam-se opcionais.
]]

print "Hello World"   --<--> print("Hello World")
print [[a multi-line
    message]]

print""
print "\n"

function foo(argumento)
    print(argumento)
end

foo {x=10, y=20}  --<-->     f({x=10, y=20})
print( type{} )   --<-->     type({})

print("---------------------------")
print()

-------------------------------------------------------

--[[

Voce pode chamar funções com um numero diferente de argumentos do seu numero de parametros.

    function f(a, b) return a or b end

CALL             PARAMETERS
       
    f(3)             a=3, b=nil
    f(3, 4)          a=3, b=4
    f(3, 4, 5)       a=3, b=4   (5 sera discartado)

]]

function foo2(a,b) print(a,b) end

foo2()
foo2 "a"
foo2(1, 2)
foo2("a", "b", "c")

print("---------------------------")
print()

-------------------------------------------------

myGlobalCounter = 0
print(myGlobalCounter)

function foo3(n)
    n = n or 1
    myGlobalCounter = myGlobalCounter + 1
end

foo3() --> n irá assumir `nil` como valor
print(myGlobalCounter)

print("---------------------------")
print()

--------------------------------------------------

-- Mesmo que a funcao nao tenha parametros em sua definição,
-- passar argumentos durante sua chamada nao resulta em erro

function foo4()
    print("maelton")
    print("---------------------------")
    print()
end

foo4("tic-tac", 15)

-----------------------------------------------------

--------- RESULTADOS MULTIPLOS ----------------------

function retornaNada () end               -- retorna nenhum resultado
function retornaA () return 'a' end       -- retorna 1 resultado
function retornaAB () return 'a','b' end  -- retorna 2 resultados

x,y   =  retornaNada()   -- x=nil, y=nil
x,y   =  retornaA()      -- x='a', y=nil
x,y,z =  retornaAB()     -- x='a', y='b', z=nil

-- Chamada de função que não é o ultimo elemento da lista
-- sempre retorna apenas um resultado:

x,y = retornaAB(), 20  --------- x='a', y=20
x,y = retornaNada(), 20, 30   -- x=nil, y=20, 30 será descartado

k = { retornaNada() }  --- k = {}  (tabela vazia)
k = { retornaA() }     --- k = {'a'}
k = { retornaAB() }    --- k = {'a', 'b'}

------------------------------------------------------------

-- CHAMANDO FUNÇÃO PARA UM CONSTRUTOR DE TABELA --
m = { retornaNada() }   ------- m = {}  (tabela vazia)
m = { retornaA() }      ------- m = {'a'}
m = { retornaAB() }     ------- m = {'a', 'b'}

m = {retornaNada, retornaAB(), 4} -- m[1] = nil, m[2] = 'a', m[3] = 4

----------------------------------------------------------

-- FORÇANDO SAIDA DE VALOR DE UMA FUNCAO --

function pipipi() end

a = pipipi()
print("meu resultado 1: ")
print( pipipi() )

print("meu resultado 2: ")
print( (pipipi()) )

print("---------------------------")
print()

---- Forçar ao menos um retorno, faz com que a função retorne
---- apenas um retorno

function popopo() return 1, 2 end

print("resultado 1: ")
print( popopo() )
print()

print("resultado 2: ")
print( (popopo()) )

print("---------------------------")
print()

---------------------------------------------
---- FUNÇÃO TABLE.UNPACK ---------
print( table.unpack {10,20,30} )  --> 10   20   30
q, w = table.unpack {10,20,30}    --> q=10, w=20, 30 será descartado

print()
print(q)
print(w)
print()

function soma(a, b) print(a+b) end

soma( table.unpack {10, '20', 30} )
print("---------------------------")
print()

----------------------------------------------
-- FUNÇÃO COM VARIADOS NUMEROS DE ARGUMENTOS --

function gago (a, b, ...) end
     
gago (3)           --> a=3, b=nil, arg={n=0}
gago (3, 4)        --> a=3, b=4, arg={n=0}
gago (3, 4, 5, 8)  --> a=3, b=4, arg={5, 8; n=2}

-- FUNÇÕES SAO VALORES DE PRIMEIRA CLASSE --

meuPrint = print

meuPrint("Pipipi Popopo")

---------------------------------------------
