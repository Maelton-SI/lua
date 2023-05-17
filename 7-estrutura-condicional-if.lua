--  if (condicao) then (acao) end
nome = 'ivo calado'

if true then
    print(nome)
end
 

--------------------------------

-- if (condicao) then (acao) else (acao) end
profissao = 'professor'

if profissao then
    print(profissao)
else
    print("Aluno")
end

-------------------------------


-- if (condicao) then (acao) elseif (acao) end
instituicao = 'IFAL'

if not profissao then
    print("Aluno")

elseif false then
    print("00")

else
    print(profissao ..'eu sou')
end