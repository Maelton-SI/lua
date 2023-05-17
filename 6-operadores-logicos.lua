--[[
    Os operadores lógicos em Lua são:

    - and (e)
    - or (ou)
    - not (não/negação)

    Todos os operadores consideram false e nil como falso, e o resto como verdadeiro
]]

-- O operador `and` retorna o primeiro argumento se ele for falso
-- Caso não ele retorna o segundo
print(4 and 5)  --> 5
print(nil and 13)  --> nil
print()

-- O operador `or` retorna o primeiro argumento se ele não for falso
-- Se não, ele retorna o segundo argumento
print(4 or 5)  --> 4
print(false or 5)  --> 5
print()

-- `and` e `or` avaliam seu segundo operando somente se necessário --


-- Casos de uso --------------------------

-- and e or
--[[
    x = x or v  <-->  if not x then x = end
]]

--[[
    Podemos selecionar o maior entre dois numeros com a expressão:

    max = (x > y) and x or y

    Quando x > y, o retorno será `true`, 
    então o `and` resultará no segundo operando que é `x`, pois ele é um numero

    Quando x não é maior que y, o retorno é falso,
    então o `and` retornará `false`, nem avaliando quem é `x`
    entre `false` e `y`, o `or` irá retornar `y` que é um number e portanto é verdadeiro

    
]]

x = -1
y = 10
max = (x > y) and x or y

print(max)
print()

-- not
print(not nil)      --> true
print(not false)    --> true
print(not 0)        --> false
print(not not nil)  --> false

-- Hieraquia de operadores---------------
--[[
    Prioridades:

    ^
    not  - (unary)
    *   /
    +   -
    ..
    <   >   <=  >=  ~=  ==
    and
    or

    Todos os operadores binarios tem prioridade definida da esquerda para direita
    Com exceção de `..` (concatenação) e `^` (potenciação).
    x^y^z  <-->  x^(y^z) 
]]