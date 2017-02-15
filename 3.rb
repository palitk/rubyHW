#Сделать хеш, содеращий месяцы и количество дней в месяце. В цикле выводить те месяцы, у которых количество дней ровно 30
=begin
mounthes = {
	jan: 31,
	feb: 28,
	mar: 31,
	apr: 30,
	may: 31,
	jun: 30,
	jul: 31,
	aug: 31,
	sep: 30,
	oct: 31,
	nov: 30,
	dec: 31,
}
mounthes.each do |k,v|
	next if v == 30
	puts k
end
=end

#Заполнить массив числами от 10 до 100 с шагом 5
=begin
array = []
i = 10
while i <=100 do
	array.push(i)
	i += 5
end
puts array
=end

#Заполнить массив числами фибоначи до 100 			  1 2 3	5 8 13
=begin

i = 0
j = 1
array = []

while i <= 100 do
	array.push(i)
	array.push(j)

	i = i + j
	j = i + j
end
puts array
=end

#Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1)
=begin
i = 0
abc = {}
(:a..:z).each do |x|
	i += 1
	if x == :a || x == :e || x == :i || x == :o || x == :u || x == :y
		abc[x] = i
	else
	end
end
puts abc
=end


#Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя). Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным
=begin

months_day = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]


puts "Ввдеите число"
d = gets.chomp.to_i

puts "Ввдеите месяц"
m = gets.chomp.to_i

puts "Ввдеите год"
y = gets.chomp.to_i

i = 0 

result = 0


while (i+1) < m do
	result = result + months_day[i]
	i+=1
end

if m >= 2 && (y % 2 == 0) 
	result = result + 1
end

result = result + d
puts result



getting_string = ""

goods = {}


while getting_string != "стоп" do

	

	puts "Введите название товара"
	name = gets.chomp
	if name == "стоп" 
		getting_string = "стоп"
		next
	end

	puts "Введите стоимость товара"
	price = gets.chomp
	
	if price == "стоп" 
		getting_string = "стоп"
		next
	end

	puts "Введите кол-во товара"
	count = gets.chomp
	
	if count == "стоп" 
		getting_string = "стоп"
		next
	end
	
goods[name.to_sym] = {
	:price => price.to_f,
	:count => count.to_f
}

end
result_sum = 0
goods.each do |k,v| 
	puts "#{k} - #{v}"
	result_sum = result_sum + (v[:count] * v[:price])
end

puts "итого: #{result_sum}"









# 
# 
# 
# 
# i = 0
# 
# start = 1;
# 
# while (x = gets.chomp) != "стоп" do
# 	if start == 1 
# 		puts "Для окончания работы программы введите 'стоп'"	
# 		start = 0
# 	end
# 	if i == 1
# 		puts "Введите название товара"
# 		name = x.to_sym
# 		i += 1
# 	elsif i == 2
# 		puts "Введите стоимость товара"
# 		price = x.to_f
# 		i += 1
# 	else
# 		puts "Введите кол-во товара"
# 		count = x.to_f
# 		i = 0
# 	end
# 	
# goods[name] = {
# 	:price => price,
# 	:count => count
# }
# 	
# end
# 
# 
# puts goods

=end





