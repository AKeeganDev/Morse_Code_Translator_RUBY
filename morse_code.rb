@translator = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
                '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K',
                '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
                '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
                '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }

# Decodes a single character by comparing the code to a mapping for its corresponding letter in English
def decode_char(char_to_translate)
  @translator[char_to_translate]
end

# Decodes a word, by looking at each letter and running the decode_char
# method and returns the translated morse code word
def decode_word(word_to_translate)
  @word_as_array = word_to_translate.split.map { |letter| decode_char letter }
  @word_as_array.join
end

# Decodes sentence, by looking at each word and running the decode_char
# method and returns the translated morse code word
def decode_sentence(sentence_to_translate)
  @sentence_as_array = sentence_to_translate.split('   ').map { |word| decode_word word }
  @sentence_as_array.join(' ')
end

# Example sentence in morse code to translate
@sentence = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'

# prints 'A BOX FULL OF RUBIES'
puts decode_sentence @sentence
