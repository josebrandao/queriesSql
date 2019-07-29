-- Programa para converter temperatura de Celsius em Fahrenheit
local cels -- armazena temperatura em oC
local fahr -- armazena temperatura em oF
io.write("Digite a temperatura em Celsius: ")
cels = io.read() -- captura valor fornecido via teclado
fahr = 1.8 * cels + 32 -- faz a conversão
-- exibe resultado na tela
io.write("Temperatura em Fahrenheit: ", fahr, "\n");
