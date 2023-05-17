--Lua é dinamicamente tipada, os tipos são atribuidos aos valores.

--[[
    Existem 8 tipos básico em Lua:
    - nil: Lua usa `nil` como uma espécie de sem valor, representa a ausencia de um valor util
    
    - boolean: true ou false. Em lua tudo é verdadeiro com exceção de nil e false. Strings vazias e 0 são verdadeiros
    
    - number: representa numeros reais (double e float). Lua não tem tipo inteiro.
    
    - string: conjunto de caracteres. Strings em lua são imutáveis.
    
    - table: O tipo tabela implementa arrays associativos.
            Um array associativo é um array que pode ser indexado não somente com numeros mas também com valores da linguagem e strings, com exceção de `nil`.

            table é a unica estrutura/colecao de dados em Lua.

            Tables não sao valores nem variaveis, são objetos.
    
    - thread
    
    - function
    
    - userdata
]]

-- Exemplos dos tipos de variáveis --

modelo = "Volkswagen Fusca 1300"
tamanho_string_modelo = #modelo --> Use `#` para obter o tamanho de strings e tables
ano = 1965
rebaixado = false
preco = 2000.59

--print(tamanho_string_modelo)
--print(ano)
--print(preco)

print( type(modelo) ) --> string
print( type(ano) ) --> number
print( type(rebaixado) ) -->boolean
print( type(preco) ) --> number
print( type( type )) --> function
print()

---------------------------------------------

-- Imprimindo números como inteiros em Lua --
numero = 10.567

numero2 = math.floor(numero)
print(numero2, type(numero2))

numero3 = string.format("%.2f", numero)
print(numero3, type(numero3))

numero4 = tonumber(numero3)
print(numero4, type(numero4))

--[[
    Funções extras abordadas:
    - type()
    - tostring()
    - tonumber()
]]

-- Operações com strings e numeros --

numeroString = '10'
numeroNumber = 10

-- É possível realizar operações aritméticas com strings em Lua
print(numeroString + numeroNumber) --> '10' + 10 = 20
print(numeroString * numeroString) --> '10' * '10' = 100

-- Convertendo inteiros em strings por concatenação
print(10 .. "" == "10") --> true
print()
--------------------------------------

-- Tables em Lua ---------------------

--[[

-- Inserir elementos: --

table.insert(tabela, valor) ou 
tabela[#tabela + 1] = valor: Insere um elemento no final da tabela.
table.insert(tabela, posicao, valor): Insere um elemento em uma posição específica da tabela.

-- Remover elementos: --

table.remove(tabela): Remove o último elemento da tabela.
table.remove(tabela, posicao): Remove o elemento em uma posição específica da tabela.

-- Acessar elementos: --

tabela[indice]: Acessa o elemento da tabela pelo índice.
tabela.chave: Acessa o elemento da tabela por uma chave.

-- Tamanho da tabela: --

#tabela: Retorna o tamanho da tabela (número de elementos).

-- Iterar sobre a tabela: --

pairs(tabela): Itera sobre os pares chave-valor da tabela.
ipairs(tabela): Itera sobre os elementos indexados da tabela.

-- Verificar se um elemento está na tabela: --

table.indexOf(tabela, valor): Retorna o índice do elemento na tabela, se encontrado, ou nil caso contrário.
table.contains(tabela, valor): Retorna true se o elemento estiver na tabela, caso contrário, retorna false.

]]

minhaTabela = {} --> Criando tabela, jeito 1
minhaTabela2 = {'tic-tac', 'pipipi-popopo'} --> Criando tabela, jeito 2

-- Posso utilizar `;` (ponto e virgula) para separar dados de uma tabela
minhaTabela3 = {x = 'horizontal'; y = 'vertical'} --> Criando tabela, jeito 3

minhaTabela["x"] = 10 --[[ mesmo que -->]]  minhaTabela.x = 10

x = 'ivo'
minhaTabela[x] = 'professor' --> A chave/index `ivo` tem o valor `'professor'`

print( minhaTabela['x'] )
print( minhaTabela[x] )
print()

function printTable(tabela)
    for chave, valor in pairs(tabela) do 
        print(chave, valor)
    end
end
printTable(minhaTabela)

----------

-- Ambos os identificadores apontam para a mesma table --
-- Se voce alterar `a` consequentemente voce altera `b`, e vice-versa.
a = {'ivo calado', 'kenji'}
b = a

-- Userdata e Threads -------------------
--[[
O tipo userdata permite que dados arbitrários em C  sejam armazenados em variáveis ​​Lua. Não possui operações predefinidas em Lua, exceto atribuição e teste de igualdade. Userdata são usados ​​para representar novos tipos criados por um programa aplicativo ou uma biblioteca escrita em C; por exemplo, a biblioteca de E/S padrão os utiliza para representar arquivos.

o tipo Thread tem relação com corrotinas em Lua.

]]