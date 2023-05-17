local str = "Hello"
local num_int = 42
local num_float = 3.14
local num_octal = 10
local num_hex = 255
local num_scientific = 1.23e+10

local formatted_string = string.format("String: %s \n Integer: %d \n Float: %.2f \n Octal: %o \n Hexadecimal: %x \n Scientific: %e",
str, num_int, num_float, num_octal, num_hex, num_scientific)


print(formatted_string) 