require 'hunspell_interface'

module Evaluate
	include Hunspell

	Ender = [ "\. ", "\? ", "! ", "\.", "\?", "!" ]

	##Each element in the text_arr must be a word
	def spell_check_all(text_arr)
		check_arr = []
		checked_text = []

		text_arr.each do |word|
			if ender?(word)
				check_arr << true
			else
				check_arr << check?(word)
			end
		end

		check_arr.each_with_index do |bool, i|
			if bool
				 checked_text << text_arr[i]
			else
				checked_text << {original: text_arr[i],
												 suggests: suggest(text_arr[i])}
			end
		end
		return checked_text
	end

	def ender?(str)
		Ender.each do |ending|
			if str == ending
				return true
			end
		end
		return false
	end


end
