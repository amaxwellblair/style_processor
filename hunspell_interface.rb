require 'ffi/hunspell'


module Hunspell
	## Below created for ease of use
	def Hunspell.check?(str)
		FFI::Hunspell.dict do |dict|
			return dict.check?(str)
		end
	end

	def Hunspell.suggest(str)
		FFI::Hunspell.dict do |dict|
			return dict.suggest(str)
		end
	end

	def Hunspell.stem(str)
		FFI::Hunspell.dict do |dict|
			return dict.stem(str)
		end
	end
end
