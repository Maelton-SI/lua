-- Primeiro programa em Lua
print("Hello world!")

-- Entrada de dados: padrão "*l"

print("Digite seu nome: ")
nome = io.read()                     -- Retorna uma string
print("Nome eh uma "..type(nome))


-- Argumento "*n"

print("Digite sua idade: ")
numero = io.read("*n")               -- Retorna um number
print("Idade eh um "..type(numero))

--[[
    Caso você digite um valor diferente de um número ele vai retorna Nil
    ou seja falso
]]
