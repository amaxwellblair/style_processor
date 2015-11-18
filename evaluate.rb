require 'ffi/hunspell'


module Evaluate

	##Each element in the text_arr must be a word
	def spell_check_all(text_arr)
		check_arr = []
		checked_text = []

		text_arr.each do |word|
			check_arr << Hunspell.check?(word)
		end

		check_arr.each_with_index do |bool, i|
			if bool
				 checked_text << text_arr[i]
			else
				checked_text << {original: text_arr[i],
												 suggests: Hunspell.suggest(text_arr[i])}
			end
		end
		return checked_text
	end


	##Created for ease of use
	module Hunspell
		def check?(str)
			FFI::Hunspell.dict do |dict|
				dict.check?(str)
			end
		end

		def suggest(str)
			FFI::Hunspell.dict do |dict|
				dict.suggest(str)
			end
		end

		def stem(str)
			FFI::Hunspell.dict do |dict|
				dict.stem(str)
			end
		end



end
