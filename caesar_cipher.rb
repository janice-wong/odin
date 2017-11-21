def caesar_cipher(str, shift)
  lower_array = ('a'..'z').to_a + ('a'..'e').to_a
  upper_array = ('A'..'Z').to_a + ('A'..'E').to_a
  result = ""
  str.split("").each do |char|
    if lower_array.index(char)
      position = lower_array.index(char)
      result << lower_array[position + 5]
    elsif upper_array.index(char)
      position = upper_array.index(char)
      result << upper_array[position + 5]
    else
      result << char
    end
  end
  result
end

p caesar_cipher("What a string!", 5)
