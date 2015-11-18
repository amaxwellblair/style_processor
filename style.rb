require 'output'
require 'evaluate'


class Style
	attr_accessor :text_body, :text_sentences, :text_words

	include Evaluate


	def initialize(file_path)
		read_file(file_path)
		@text_sentences = by_sentence(@text_body)
		@text_words = by_word(@text_body)
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

	def count_word
		count(@text_words)
	end

	def count_sent
		count(@text_sentences)
	end

	def spellcheck
		spell_check_all(@text_words)

	end

end
