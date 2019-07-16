puts "Введите число месяца"
day = gets.chomp.to_i
puts "Введите порядковый номер месяца"
month = gets.chomp.to_i
puts "Введите год"
year = gets.chomp.to_i

#Тут логика для определения типа года - високосный / Не високосный 
if (year % 4).zero? && (year % 100 != 0 || (year % 400).zero?)
  tipe_year = 29
else
  tipe_year = 28
end

month_days_hash = {
  1 => 31,
  2 => tipe_year,
  3 => 31,
  4 => 30,
  5 => 31,
  6 => 30,
  7 => 31,
  8 => 31,
  9 => 30,
  10 => 31,
  11 => 30,
  12 => 31
}
date_number = month_days_hash.values.take(month - 1).sum
date_number += day #после подсчета всех дней месяцев, предшествующих введенному, добавляем кол-во дней веденного месяца
if date_number < 367
  puts "Порядковый номер введенной Вами даты от начала года: #{date_number}" 
else
  puts "Вы ввели некорректную дату"
end
