require "library/version"
require "library/book"
require "library/reader"
require "library/author"
require "library/order"

module Library
class Library
	attr_reader :books, :orders, :readers, :authors
		BEST_SIZE = 3

		def initialize(books = [], orders = [], readers = [], authors = [])
			@books = books
			@orders = orders
			@readers = readers
			@authors = authors
		end

		def add_book(title, author)
			@books << (Book.new title, author) 
		end

		def add_author(name, biography)
			@authors << (Author.new name, biography)
		end

		def add_reader(name, email, city, street, house)
			@readers << (Reader.new name, email, city, street, house)
		end

		def add_order(book, reader, date = Time.new)
			@orders << (Order.new book, reader, date)
		end

		def save_to_file(file_name)
			File.open(file_name, 'w') do |library|
				library.puts Marshal.dump(self)
			end
		end

		def read_from_file(file_name)
			Marshal.load(File.read(file_name))
		end

		def max_read_book
			puts "Most popular book is #{self.max_read(self.books)}"
		end

		def max_read_man
			puts "Most reading reader is #{self.max_read(self.readers)}"
		end

		def max_read(objs)
			objs.select{|obj| obj.count == (objs.map{|obj| obj.count}.max)}
		end

		def most_popular_books_reader
			book_count = books.map{|book| book.count}.sort[-BEST_SIZE]
			fam_books = books.select{|book| book.count >= book_count}
			fam_reader = 0
			orders.each {|order| fam_reader += 1 if fam_books.include?(order.book)}
			fam_reader
		end
	end
end
