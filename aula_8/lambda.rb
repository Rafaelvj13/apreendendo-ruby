my_lambda = lambda do |numbers|
  # Inicializa um lambda que recebe um parâmetro chamado 'numbers'.
  index = 0
  puts 'Número atual + Próximo número'
  # Imprime um cabeçalho.

  numbers.each do |number|
    # Inicia uma iteração sobre o array 'numbers'.
    return if numbers[index] == numbers.last
    # Retorna (sai da função) se o número atual for o último do array.
    
    puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
    # Imprime a representação dos números atuais e próximos entre parênteses.
    puts numbers[index] + numbers[index + 1]
    # Calcula e imprime a soma dos números atuais e próximos.
    
    index += 1
    # Incrementa o índice para avançar para o próximo par de números.
  end
end
