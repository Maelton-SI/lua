------------- FOR NUMERICO -------------
--[[
    for var=exp1,exp2,exp3 do
      something
    end
]]

for x=1, 10 do
    io.write(x..' ')
end

print();

y = 10
for x=y , 0, -1 do
    io.write(x..' ')
end
print()

------------- FOR GENERICO -------------
--[[
    for var in functio() do
        something
    end
]]

minhaTabela = {
    Segunda = "Monday",
    Terca = "Tuesday",
    Quarta = "Wednesday",
    Quinta = "Thursday",
    Sexta = "Friday",
    Saturday = "Sabado",
}

for i,v in pairs(minhaTabela) do
    print( string.format("%s: %s", i, v) )
    -- print( i..': '..v) --> pode ser assim tbm

    if v == "Friday" then 
        break 
    end
end