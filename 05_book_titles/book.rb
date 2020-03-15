class Book
	# Set method
	attr_writer :title 
	
	# Get method
	def title
		words = @title.split

		words.each_with_index do |elem, i|
			keep_lower = [
				'and',
				'in',
				'the',
				'of',
				'a',
				'an'
			]

			if keep_lower.include? elem.downcase
				words[i] == elem
			else
				words[i] = elem.capitalize
				words[0] = words[0].capitalize
			end 
		end

		words.join(' ')
	end
end
