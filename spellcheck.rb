require 'spellchecker'


class Spellchecker::Tempfile

	text_to_check = 'Theis sentence has many speling mistackes'

	results = Spellchecker.check(text_to_check)

	puts(results)
	
end