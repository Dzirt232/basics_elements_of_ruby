module UsefullThings

  def caesar_cipher(string, key=1)
    @alphavit = ("a".."z").to_a
  	cipher = string.split.map! do |word|
  		if word == word.capitalize
  			capitalize = true
  		else
  			capitalize = false
  		end
  		word.downcase!
  		curr, word = word, ''
  		curr.each_char do |e|
  			if e.match(/[a-z]/)
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
  	return cipher.join(" ")
  end

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
  	return "Bay in the "+ bay.to_s + " day, and sell in " + sell.to_s + " day."
  end

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
  	return hash.sort.to_h
  end
end
