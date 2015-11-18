require 'output'
require 'evaluate'


class Style
	attr_accessor :text_body, :text_sentences, :text_words

	include Evaluate


	def initialize(file_path)
		by_word(read_file(file_path))
	end

	def read_file(file_path)
		@text_body = []
		File.open(file_path) do |f|
			f.each_line do |line|
				@text_body << line.chomp
			end
		end
		@text_body
	end

	def by_sentence(text_array)
		text_array = text_array.join("\n")
		@text_sentences = text_array.split(/(\. |\? |! |\n )/) ##KEEP WORKING ON INCLUDING DELIMINATORS
		if ender?(@text_sentences.last[-1]) ##for enders that are not split (usually last)
			new_end = @text_sentences.last[-1]
			new_sent = @text_sentences.pop[0..-2]
			@text_sentences << new_sent << new_end
		end

		##you also need to check the last one for an ender
	end

	def count_sent
		count(@text_sentences)
	end

	def by_word(text_array)
		by_sentence(text_array)
		sentences = @text_sentences
		words_arr = []
		sentences.each do |sent|
			if ender?(sent)
				words_arr << sent
			else
				sent.split(" ").each {|word| words_arr << word }
			end
		end
		@text_words = words_arr
	end

	def count_word
		count(@text_words)
	end

	def simple_output
		puts @text_body ##placeholder
		return @text_body
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


end
