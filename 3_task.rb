fibonachi_arr = [0, 1]
i = 0
while i < 100 do
  i = fibonachi_arr[-1] + fibonachi_arr[-2]
  #тут ограничиваю максимально возможное число для
  #добавления в массив (чтобы выполнить условие по заданию: "числами фибоначчи до 100")
    fibonachi_arr.push(i) if i < 100
end
puts fibonachi_arr
