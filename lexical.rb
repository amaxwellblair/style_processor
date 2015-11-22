##require 'Wordnik'
##Don't have the Wordnik API key yet so coding around the functions that will
##be located in the API


module Lexicon
	## Below created for ease of use
	def Lexicon.part_of_speech(word)
    return "noun"
    #just an example to code around this
    #returns part of speech
  end

	def Lexicon.synonym(word)
    return %w(cat, beaver, wolf, possum, chicken, whale)
    #just an example to code around this
		#returns a list of different synonyms
	end

end
