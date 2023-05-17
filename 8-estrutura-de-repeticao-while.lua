count = 1;

while count <= 10 do
    print(count);
    --count += 1 --> nao funciona
    --[[
        += e -= nao funciona nessa versao do Lua.

        Em Lua, existem operadores combinados para outros operadores aritméticos, como *=, /=, //=, %= e ^=, que podem ser usados da mesma maneira para atualizar o valor de uma variável. 
        
        No entanto, é importante notar que esses operadores combinados estão disponíveis apenas a partir da versão Lua 5.2 em diante. Caso esteja utilizando uma versão anterior, é necessário utilizar a forma completa de atribuição.
    ]]

    count = count + 1
end;