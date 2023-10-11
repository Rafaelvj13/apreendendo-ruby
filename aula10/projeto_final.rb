#Crie um software que permita que o usuário entre com um texto, o idioma em que o texto está escrito e também o idioma para qual ele deseja traduzir o texto e receba como resposta na tela o texto traduzido.
 
#Critérios:
#Você deve utilizar orientação a objetos no seu software
#O resultado de cada tradução (junto com a frase original) deve ser guardado em um arquivo que possua no nome a data e horário da tradução (exp: 10-10-18_10:30.txt)

require 'google/cloud/translate'
require 'time'

class Translator
  def initialize
    @translate = Google::Cloud::Translate.new project: 'your-project-id'
  end

  def translate_text(text, source_language, target_language)
    translation = @translate.translate(text, from: source_language, to: target_language)
    translation.text
  end
end

class TranslationHistory
  def initialize
    @translations = []
  end

  def add_translation(original_text, translated_text, source_language, target_language)
    @translations << { original_text: original_text, translated_text: translated_text, source_language: source_language, target_language: target_language }
  end

  def save_to_file
    timestamp = Time.now.strftime('%d-%m-%y_%H:%M')
    File.open("#{timestamp}.txt", 'w') do |file|
      @translations.each do |translation|
        file.puts("Original (#{translation[:source_language]}): #{translation[:original_text]}")
        file.puts("Traduzido (#{translation[:target_language]}): #{translation[:translated_text]}\n")
      end
    end
  end
end

translator = Translator.new
history = TranslationHistory.new

puts "Digite o texto que deseja traduzir:"
text = gets.chomp

puts "Digite o idioma de origem (ex: en):"
source_language = gets.chomp

puts "Digite o idioma de destino (ex: pt):"
target_language = gets.chomp

translated_text = translator.translate_text(text, source_language, target_language)

history.add_translation(text, translated_text, source_language, target_language)
history.save_to_file

puts "Texto traduzido: #{translated_text}"
puts "A tradução foi salva em um arquivo com a data e hora da tradução."
