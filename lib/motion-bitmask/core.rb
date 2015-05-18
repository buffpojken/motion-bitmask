class Bitmask

	def initialize(*args)
		@field 		= args.first.is_a?(Integer) ? args.shift : 0
		@values 	= args.first.is_a?(Array) ? args.shift : []
		@options 	= args.last.is_a?(Hash) ? args.pop : {}
		self
	end

	def <<(value)
		validate_value(value)
		@field |= 1 << @values.index(value)**2
	end

	def set?(value)
		validate_value(value)
		@field & (1 << @values.index(value)**2) > 0
	end

	private

	def validate_value(val)
		raise ArgumentError.new("Value not in field value list: #{@values.inspect}") unless @values.include?(val)
	end

end