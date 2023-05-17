--[[ 
    Acessar variáveis não inicializadas não resulta em erro
    você terá como resultado o valor especial `nil`
]]

print(naoFuiDefinida) --> Imprime `nil` na tela

-- Para deletar variáveis atribua o valor `nil` a elas
comediante = 'tiririca'
print(comediante) --> Imprime `tiririca`

comediante = nil
print(comediante) --> Imprime `nil`
print()

--[[
    1. Lua é case sensitive:
        var e Var serão variáveis diferentes

    2. Não comece identificadores com numeros, não vai funcionar
    
    3. Identificadores iniciados com `_` (underscore) e uma ou mais letras maiúsculas
    não são inidicados, pois são reservadas para alguns usos especiais em Lua, então evite prezado(a).

    4. Palavras reservadas que não podem ser utilizadas como identificadores:
    and       break     do        else      elseif
    end       false     for       function  if
    in        local     nil       not       or
    repeat    return    then      true      until
    while

]]

-- Lua suporta assinatura multipla

assinatura, realidade = 'ivo calado', 'ivo darkside'
print(assinatura, realidade)

-- Em Lua é possivel realizar a troca de valores das variaveis da seguinte forma:
assinatura, realidade = realidade, assinatura
print(assinatura, realidade)
print()

-- Variáveis locais
local PI = 3.14

if true then
    print(PI)
    print() 
end

if true then 
    local PI = 1 
    print(PI)
    print()
end

print(PI)
print()

-- Bloco `do`

do
    local s = "Sou uma variável local"
end

print(s)