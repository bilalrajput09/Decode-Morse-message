def process_word(word)
#   ->
  array_of_words = word.split
  message = ''
  array_of_words.each do |char|
    message += morse_code_hash[char]
  end
  message
end

def decode_message(string)
  array_of_chars = string.split('  ')
  message_arr = []
  array_of_chars.each do |word|
    message_arr.push(process_word(word)) if word != ''
  end
  p message_arr.join(' ')
end

# -> 
