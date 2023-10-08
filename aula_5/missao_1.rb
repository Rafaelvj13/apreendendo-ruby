#Missão 1
#Crie um programa que possua um método que resolva a potência dado um número base e seu expoente. Estes dois valores devem ser informados pelo usuário.

def potencializar(base, expoente)
  base ** expoente
end

print "Digite um número base: "
base = gets.chomp.to_i

print " Digite o expoênte: "
expoente = gets.chomp.to_i

potencia = potencializar(base, expoente)

puts "O número base #{base} elevado a #{expoente} é igual a #{potencia}"