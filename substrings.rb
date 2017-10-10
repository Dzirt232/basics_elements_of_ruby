dictionary = ['below','down','go','going','horn','how','howdy','it','i','low','own','part','partner','sit','am','andrey','le','lexa','danilevsky','dan','comp','haker','hak']

def substrings(string,dict)
	hash={}
	array_strings = string.split(" ").each do |word|
		word.downcase!
		i=1
		dict.each do |d|
			if word.include?(d)
				hash[d]=i 
				i=i+1			
			end
		end
	end
	puts hash.sort.to_h
end

substrings('below', dictionary)
substrings('Howdy partner, sit down! How\'s it going?', dictionary)