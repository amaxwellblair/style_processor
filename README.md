Style Processor
==============

Purpose
--------
It can be difficult to write consistently in the proper style and technique when modern day professionals have to wear many different hats. For example an influential technology profession could write an email, blog post and presentation all in the same day. Causing overlapping styles when they may be inappropriate.

	>For example writing long descriptive sentences in an email. When shorter >functional sentences should be emphasized.

The Style Processor should be able to process text and alert the professional to style inconsistencies.

Goals
---------
*Spell checking*
Spell check functionality may not be the direct goal of the Style Processor but most users expect at a minimum a text processor will be able to check for misspelled words.

1. Hunspell (Industry standard) is the API being utilized for this functionality
- Complete
2. Output incorrect words and suggestions
- Complete in terminal -> Incomplete in HTML

*Thesaurus*
Check for repeated words and suggest alternatives.

1. Wordnik is the API chosen to be utilized
- Wordnik has not delivered an API key as of yet (if this doesn't occur a different provider will be chosen)
- Foundation for the API has already been created and tested. Production of full thesaurus functionality is at a gating point
2. Output repeated words and suggest synonyms for replacement
- Incomplete in HTML

*Sentence statistics*
Count, length, type and other functions. Compile statistics on common style types (prose, email, presentation, blog post, etc.)

1. No progress

*TBD*
Use book "Elements of Style" to include more m
