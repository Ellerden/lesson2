#encoding: UTF-8
# Сумма покупок в корзине

puts "Для добавления товара в корзину введите название, количество "\
"купленного товара и цену за единицу. Чтобы закончить покупки введите 'стоп' "\
"в качестве названия товара"
check = 0
goods = {}
loop do
  puts "Название товара:"
  title = gets.chomp
  break if title.downcase == "стоп"
  puts "Цена за единицу (руб.)"
  price = gets.chomp.to_f
  puts "Количество купленного товара:"
  amount = gets.chomp.to_f
  goods[title] = {price: price, amount: amount}
end

puts "Вы добавили в корзину товары:"
puts "-----------------------------"

goods.each do |key, value|
  sum = goods[key][:amount] * goods[key][:price]
  check += sum
  puts key
  puts "Цена: #{goods[key][:price]} руб./ед. Кол-во: #{goods[key][:amount]}"
  puts "Итог: #{sum} руб."
  puts "..........................."
  sum = 0
end

puts "-----------------------------"
puts "Общая сумма покупок в вашей корзине: #{check} руб."
puts "-----------------------------"
