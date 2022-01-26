def decode_morse_char(s)
  morse_hash = { 
    "A" => ".-", 
    "B" => "-...",
    "C" => "-.-.",
    "D" => "-..",
    "E" => ".",
    "F" => "..-.",
    "G" => "--.",
    "H" => "....",
    "I" => "..",
    "J" => ".---",
    "K" => "-.-",
    "L" => ".-..",
    "M" => "--",
    "N" => "-.",
    "O" => "---",
    "P" => ".--.",
    "Q" => "--.-",
    "R" => ".-.",
    "S" => "...",
    "T" => "-",
    "U" => "..-",
    "V" => "..-",
    "W" => ".--",
    "X" => "-..-",
    "Y" => "-.--",
    "Z" => "--..",
    "0" => "-----",
    "1" => ".----",
    "2" => "..---",
    "3" => "...--",
    "4" => "....-",
    "5" => ".....",
    "6" => "-....",
    "7" => "--...",
    "8" => "---..",
    "9" => "----."
  }
  value = morse_hash.select { |k,v| v == s }
  return value.keys[0]
end


def decode_morse_word(w)
  w = w.split(" ")
  w.map! { |x| decode_morse_char(x) }
  return w.join("")
end
decode_morse_word("-- -.--")

def decode_morse_sentence(s)
    s = s.split("   ")
    s.map! { |x| decode_morse_word(x) }
    return s.join(" ")
end

decode_morse_sentence("-- -.--   -. .- -- .")


