
$days_isxodn = [17,5,6,8,2,4,3,7]

def stock_picker(days)
	bay = days.min
	sell = days.max
	if days.index(bay) > days.index(sell)
		stock_picker(days - [days.delete(sell)])
	else
		puts "Bay in the "+ ($days_isxodn.index(bay)).to_s + " day, and sell in " + ($days_isxodn.index(sell).to_s) + " day."
	end
end

stock_picker([17,5,6,8,2,4,3,7])

puts "Введите ваши числа: "
$days_isxodn = gets.chomp.split(" ").map! { |e| e.to_i }

stock_picker($days_isxodn)
