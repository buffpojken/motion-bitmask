module Bitmask

	def self.included(base)
		base.send :include, Instance
	end

	module Instance

		def monkey
			"ninja"
		end

	end

end