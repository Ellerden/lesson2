#encoding: UTF-8
#Хэш с гласными буквами
#Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).

abc = ("a".."z").to_a
VOWELS = ["a", "e", "i", "o", "u"]
vowels_hash = abc.each_with_index.select {|letter, i| VOWELS.include? letter }.to_h
#т.к. в массиве нумерация с 0 здесь к номерам букв прибавляем 1, как в алфавите
vowels_hash.transform_values! { |value| value + 1}
puts "Гласные: #{vowels_hash}"
