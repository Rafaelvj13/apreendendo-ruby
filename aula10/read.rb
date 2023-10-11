puts '---lista de compras---'

file = File.open('shooping-list.txt')

file.each do |line|
  puts line
end
