

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
				text_output[i] = "*("+count.to_s+") "+element[:original]+"*"
				count += 1
			end
		end
		text_output = text_output.join(" ")
		return text_output
	end
end
