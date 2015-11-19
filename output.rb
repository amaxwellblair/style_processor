

class Style

	def simple_output
		puts @text_body
		return @text_body
	end

	def output_spell_check
		mark_up = spell_check_all(@text_words)
		wrong_words = mark_up.select{ |element| element.class == Hash}
		text_output = @text_words
		count = 1
		mark_up.each_with_index do |element,i|
			if element.class == Hash
				##Don't have a better way to output in terminal
				text_output[i] = "*("+count.to_s+") "+element[:original]+"*"
				count += 1
			end
		end

		return output_ender_tidy(text_output)
	end

	def output_ender_tidy(text_arr)
		text_arr.each_with_index do |word, i|
			if ender?(word)
				text_arr[i-1] = text_arr[i-1] + word
			end
		end
		text_arr = delete_enders(text_arr)
		text_arr = text_arr.join(" ")
		return text_arr
	end
end
