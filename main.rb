def decode_morse_char(str)
  morse_hash = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.',
    'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.',
    'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '..-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..', '0' => '-----', '1' => '.----', '2' => '..---', '3' => '...--',
    '4' => '....-', '5' => '.....', '6' => '-....', '7' => '--...', '8' => '---..', '9' => '----.'
  }
  value = morse_hash.select { |_k, v| v == str }
  value.keys[0]
end

def decode_morse_wor(word)
  word = word.split
  word.map! { |x| decode_morse_char(x) }
  word.join
end
decode_morse_wor('-- -.--')

def decode_morse_sentence(str)
  str = str.split('   ')
  str.map! { |x| decode_morse_word(x) }
  str.join(' ')
end

decode_morse_sentence('-- -.--   -. .- -- .')
