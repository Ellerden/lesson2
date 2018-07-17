#encoding: UTF-8
#Массив с числами Фибоначчи до 100
#Fn = Fn-1 + Fn-2
#F1 = F2 = 1

fib = []
i = 0
while i <= 100
  if i < 2
    fib << 1
    i += 1
  else
    fib << (fib[-1] + fib[-2])
    i = fib.last
  end
end
# Проверяем, попало ли число > 100 в массив чисел Фибоначчи, если да - удаляем
fib.pop if fib.last >= 100
puts "Вот такие числа Фибоначчи я знаю: "
fib.each { |x| puts x}
