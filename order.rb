class Order
	#Order: book, reader, date
	attr_reader :book, :reader, :date

	def initialize(book, reader, date = Time.new)
		@book = book
		@reader = reader
		@date = date
		@book.read
		@reader.read
	end

	def to_s
		"Order: book - #{@book}; reader - #{@reader.name} / #{@reader.email}; date - #{@date}"
	end

	def ==(other)
		if other.is_a? Order
			@book == other.book && @reader == other.reader && @date = other.date
		else
			false
		end
	end
	
end
