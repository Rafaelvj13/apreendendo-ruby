result = ''
loop do
  puts result 
  puts "Selecione uma das seguintes opções: "
  puts "1- adicionar"
  puts "2- subtrair"
  puts "3- multiplicar"
  puts "4- dividir"
  puts "0- sair"
  print "Opção: "

  option = gets.chomp.to_i

  case option
  when 1..4
    print "digite o primeiro número:"
    number1 = gets.chomp.to_i

    print "digite o segundo número:"
    number2 = gets.chomp.to_i
    case option
    when 1
      result = "#{number1} + #{number2} = #{number1 + number2}"
    when 2
      result = "#{number1} - #{number2} = #{number1 - number2}"
    when 3
      result = "#{number1} * #{number2} = #{number1 * number2}"
    when 4 
      result = "#{number1} / #{number2} = #{number1 / number2}"
    end
  when 0
    break
  else
    result = "opção inválida"
  end
  system "clear"  
end