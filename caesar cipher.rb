def caesar_cipher(string, shift_factor)
    ciphed_array = []
    string.split("").each do |letter|
        letter_key = letter.ord
        if letter_key > 64
            letter_key += shift_factor
            letter_key = letter_key.chr
            ciphed_array << letter_key
        else ciphed_array << letter
        end
    end
    ciphed_array.join("")
end