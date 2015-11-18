require 'ffi/hunspell'

FFI::Hunspell.dict do |dict|
	puts(dict.check?('.'))
# => true
	puts(dict.suggest('d0gs'))
	#puts(dict.stem('feet'))
	#puts(dict.check?('d0g'))
# => false
end
