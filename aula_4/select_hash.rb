hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'tres'}

puts 'Selecionando keys com valor maior que 0'

selection_keys = hash.select do |key, values|
  key > 0
end

puts selection_keys