Need:
	I have a hard time writing in accordance with well known style.
	Would like a computer to tell me what I am doing wrong and why.
	most spell check devices just tell? me there is something wrong
	I would like more then that and a deeper correction.
	Although this is all opinion based. so the need to disable items
	based on preference is key.

Style processor:
	takes in a text document and returns information on said text
	returned information:
		basic statistics
		style guide conflicts
			weird placements of nouns, verbs, adjectives
			using words like 'very'
			maybe something on tense?
		repeated words and synonyms for such words
		variability of sentence length
		spelling errors - seems that the spell checker only works on
		a word by word basis - each word has to be categorized by the
		dictionary anyways so if not found by dictionary use
		spellcheck

		Elements of style:
			Check for oxford comma versus stand comma usage
			all comma usage pg 3.
			colons pg 8
			pg 9 plural vs singular



Output:
	Different output for each type of rule. Style processor evaluates
	everything and then there are is an output for each evaluation.


Mechanics:
	Each test is its on unit which can be placed in to the processor

	the processor on its own should be able to pick up spelling
	errors and definitions of words (hopefully there is a dictionary
	API)

	Once the processor is complete - each test can be created and
	tested

	The processor itself is an OBJECT (so it is a class)
		Within the processor there are many functions
		Each function is a different rule/constraint


Flow:
	Read text into processor (Class processor)
		create an instance of the processor on what is read in
		interface for evaluate and output
	Evaluate (Class < processor)
		are these just the rules of style being applied to the text

	Output (Class < processor)
		the product of evaluate is then prepped and shipped

Instructions: Hunspell
	In order to properly install ffi-hunspell the gem needs to be downloaded then
	the dictionary needs to be downloaded. For this project en_US was used. This
	file's directory is then referenced with in the ffi-hunspell gem as a known
	directory
