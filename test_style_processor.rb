require 'rubygems'
require 'minitest/autorun'
$:.push '/Users/maxwell/Desktop/ruby_code/style_processor'
require 'style'

class TestStyle < MiniTest::Unit::TestCase

	def setup
		sample_text = "Hello! My nme is maxwell. I live in Denver and I lve to eat crabs. I like chicken and Indian food too. I do not know if I like red meat anymore given the health effects? We'll see soon enough."
 		file_path = "./testing/sample.txt"
 		##if File.exist?(file_path) && File.size?(file_path)
 		##	@paragraph = Style.new(file_path)
		##else
			File.new("./testing/sample.txt")
			File.open(file_path, "w") do |f|
				f.write(sample_text)
			end
			@paragraph = Style.new(file_path)
		##end
	end

	def test_file_upload
		assert_instance_of Style, @paragraph
		assert_equal 12, @paragraph.text_sentences.length
	end

	def test_count
		assert_equal 39, @paragraph.count_word
		assert_equal 5, @paragraph.count_sent
	end

	def test_spell_check
		assert !Hunspell.check?('d0g'), "spelled incorrect"
		assert Hunspell.check?('dog'), "spelled correct"
		refute_nil Hunspell.suggest('d0g')
		mark_up = @paragraph.spellcheck
		assert_equal 2, mark_up.select{ |element| element.class == Hash}.count
	end

	def test_thesaurus
		refute_nil Lexicon.synonym('dog')
		assert_equal "noun", Lexicon.part_of_speech('dog')
		synonyms = @paragraph.thesaurus
		assert_equal 0, synonyms.length
		puts(synonyms)
	end

end
