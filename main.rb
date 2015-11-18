$:.push '/Users/maxwell/Desktop/ruby_code/style_processor'
require 'style'


while true
	puts("Please type in the file name (extension as well)")
	file_path = gets.chomp
	text_processed = Style.new(file_path)
	##text_processed.simple_output
	puts(text_processed.output_spell_check)
end
