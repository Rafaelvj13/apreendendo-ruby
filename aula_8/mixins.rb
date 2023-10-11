module ImpressaDecorada
  def imprimir text
    decoracao = '#' * 100
    puts decoracao
    puts text
    puts decoracao
  end
end

module Pernas
  include ImpressaDecorada

  def chute_frontal
    imprimir "chute frontal"
  end

  def chute_lateral
    imprimir "chute lateral"
  end
end

module Bracos
  include ImpressaDecorada

  def jab_de_direita
    imprimir "jab de direita"
  end

  def jab_de_esquerda
    imprimir "jab de esquerda"
  end

  def gancho
    imprimir "gancho"
  end
end

class LutadorX
  include Pernas
  include Bracos
end

class LutadorY
  include Pernas
end

lutadorX = LutadorX.new
lutadorX.chute_frontal
lutadorX.jab_de_direita

lutadory = LutadorY.new
lutadory.chute_lateral
