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
				check_arr << Hunspell.check?(word)
			end
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

	def by_sentence(text_array)
		text_array = text_array.join("\n")
		text_array = text_array.split(/(\. |\? |! |\n )/) ##KEEP WORKING ON INCLUDING DELIMINATORS
		if ender?(text_array.last[-1]) ##for enders that are not split (usually last)
			new_end = text_array.last[-1]
			new_sent = text_array.pop[0..-2]
			text_array << new_sent << new_end
		end
		return text_array
		##you also need to check the last one for an ender
	end

	def by_word(text_array)

		sentences = by_sentence(text_array)
		words_arr = []
		sentences.each do |sent|
			if ender?(sent)
				words_arr << sent
			else
				sent.split(" ").each {|word| words_arr << word }
			end
		end
		return words_arr
	end

	private

	def count(text_arr)
		counter = -1
		text_arr.each do |sent|
			if ender?(sent)
				next
			else
				counter += 1
			end
		end
		counter
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
