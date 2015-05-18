module Bitmask

	def self.included(base)
		base.send :extend, ClassMethods
	end

	module ClassMethods

		def monkey
			"ninja"
		end

	end

end