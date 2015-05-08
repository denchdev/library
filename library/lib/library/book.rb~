class Book
	attr_reader :title, :author, :count 

	def initialize(title, author)
		@title = title
		@author = author
		@count = 0
	end

	def to_s
		"Book: #{@title} / #{@author}"
	end

	def ==(other)
		if other.is_a? Book
			@title == other.title && @author == other.author
		else
			false
		end
	end

	def read
		@count += 1
	end
end
