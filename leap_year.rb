#encoding: UTF-8
# Порядковый номер даты

puts "Я скажу вам, какой по порядку день в году. Но сначала скажите, "\
"какое сегодня число?"
user_day = gets.chomp.to_i
puts "Какой месяц? (введите число от 1 до 12)"
user_month = gets.chomp.to_i
puts "А какой год?"
user_year = gets.chomp.to_i

date = user_day
# месяцы с количеством дней
months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30 ,31]
# если год високосный, то меняем значение дней в феврале на 29
if (user_year % 4 == 0 && user_year % 100 != 0) || (user_year % 400 == 0)
  months[1] = 29
end
i = 0
while i < user_month - 1
  date += months[i]
  i += 1
end
puts "Сегодня #{date} день от начала года"
