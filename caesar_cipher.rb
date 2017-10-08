@alphavit = 'abcdefghijklmnopqrstuvwxyz'.split("")

def caesar_cipher(string, key=1)
	cipher = string.split.map! do |word| 
		if word == word.capitalize
			capitalize = true
		else
			capitalize = false
		end
		word.downcase!
		curr, word = word, ''
		curr.each_char do |e|
			if e.match?(/[a-z]/)
				index_1 = @alphavit.index(e)
				if index_1+key > @alphavit.count-1
					word += @alphavit[key-(@alphavit.count-index_1)] 	
				else
				word += @alphavit[index_1+key]
				end
			else
				word += e	
			end
		end
		if capitalize == true
			word = word.capitalize!
		else
			word
		end
	end
	puts cipher.join(" ")
end

caesar_cipher("Hello!",5)
caesar_cipher("My name, is Andrey!",3)
caesar_cipher("How are you?",7)
caesar_cipher("Whose, who is make mathmatics with me, is very big glassesman.")
