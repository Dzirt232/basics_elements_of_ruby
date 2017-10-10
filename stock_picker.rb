def stock_picker(days)
	k=1
	profit=[0]
	for i in 0..days.count-1 do
		for j in (i+1)..(days.count-1) do
			pro=days[j]-days[i]
			if pro > 0
				if pro > profit[k-1]
					profit[k]=pro
					bay=i
					sell=j
					k=k+1
				end
			end
		end
	end
	puts "Bay in the "+ bay.to_s + " day, and sell in " + sell.to_s + " day."
end

stock_picker([17,5,6,8,2,4,3,7])

puts "Введите ваши цены"
array = gets.chomp.split(" ").map { |e| e.to_i }
stock_picker(array)