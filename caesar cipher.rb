def caesar_cipher(string, shift_factor)

    ciphed_array = []
    
    string.split("").each do |letter|
        letter_key = letter.ord
        if letter_key >= 65 && letter_key <= 90
            letter_key += shift_factor
            while letter_key > 90
                letter_key -= 26
            end
            while letter_key < 65
                letter_key += 26
            end
            ciphed_letter = letter_key.chr
            ciphed_array << ciphed_letter

        elsif letter_key >= 97 && letter_key <= 122
            letter_key += shift_factor
            while letter_key > 122
                letter_key -= 26
            end
            while letter_key < 97
                letter_key += 26
            end
            ciphed_letter = letter_key.chr
            ciphed_array << ciphed_letter

        else ciphed_array << letter
        end
    end
    ciphed_array.join("")
end