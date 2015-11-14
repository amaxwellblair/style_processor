require 'ffi/hunspell'

FFI::Hunspell.dict do |dict|
	puts(dict.check?('dog'))
# => true

	puts(dict.check?('d0g'))
# => false
end
