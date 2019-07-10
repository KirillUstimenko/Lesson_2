product_name = "" #тут объявляю переменную, чтобы сразу проверить ее в цикле while 
product_name_hash = {}

while product_name != "Стоп" do
  puts "Введите название купленного товара:"
  product_name = gets.chomp.capitalize

  #условие для введения цены и кол-ва товара
  if product_name != "Стоп"
    puts "Введите цену купленного товара (в рублях):"
    product_price = gets.chomp.to_f
    puts "Введите количество купленного товара:"
    product_amount = gets.chomp.to_f 
    product_name_hash[product_name] = { product_price => product_amount }
  end
  #если введенное значение в product_name является "Стоп",
  #то передаем по данной переменной данное значение циклу while для проверки условия
end

#Вывожу полученный Hash
puts product_name_hash

puts "Итоговые суммы, потраченные на товары:"
product_all_summ = 0
product_name_hash.each do |product_name_link, product_price_amount_hash_link|

=begin
  в данное строке вычисляю итоговую стоимость каждого товара: беру hash, который положил в переменную product_price_amount_hash_link,
  выбираю массив ключей, из этого массива выбираю значение.Со значениями хэша аналогично.
  Затем беру первый элемент массива ключей и умножаю с первым элементом массива значений.
  Т.к. в массивах (ключей и значений) только по одному значению, то извлекаю по индексу 0 первые значения
=end
  product_name_summ = product_price_amount_hash_link.keys.fetch(0) * product_price_amount_hash_link.values.fetch(0)
  puts "#{product_name_link}: #{product_name_summ} руб."

  #Тут вычисляю общую сумму по всем покупкам
  product_all_summ += product_name_summ
end
puts "Итоговая сумма по всем покупкам: #{product_all_summ} руб."
