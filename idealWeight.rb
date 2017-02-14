
puts "Введите ваше имя"
name = gets.chomp

puts "Введите ваш рост"
height = gets.chomp.to_i

result = height - 110

if result > 0

puts "#{name}, ваш идеальный вес #{result}"
	
else

puts "#{name}, ваш вес уже оптимальный"

end