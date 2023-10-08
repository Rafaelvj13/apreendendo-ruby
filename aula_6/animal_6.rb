class Animal

  def pular
    puts 'Toing, tuim, bong, bong'
  end

  def dormir
    puts 'zzzzZZZZzzzz'
  end
end
  
class Cachorro < Animal
  def latir
    puts "Au, auuuuuuuuuu"
  end
end

class Gato < Animal
  def miau
    puts "misuuuuuuuu"
  end
end

gato = Gato.new
gato.miau
gato.pular
gato.dormir

