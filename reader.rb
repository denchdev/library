class Reader
	#Reader: name, email, city, street, house
	attr_reader :name, :email, :city, :street, :house, :count 

	def initialize(name, email, city, street, house)
		@name = name
		@email = email
		@city = city
		@street = street
		@house = house
		@count = 0
	end

	def to_s
		"Reader: #{@name} / #{@email} / #{@city}, #{@street}, #{@house}"
	end

	def ==(other)
		if other.is_a? Reader
			@name == other.name && @email == other.email
		else
			false
		end
	end

	def read
		@count += 1
	end
end
