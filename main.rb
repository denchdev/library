require_relative 'author'
require_relative 'book'
require_relative 'reader'
require_relative 'order'
require_relative 'library'

library = Library.new
puts library

library.add_author "Andy Peterson", ""
library.add_author "Karl Grengy", ""
library.add_author "Lucas Maura", ""
library.add_author "Lora Martinez", ""
library.add_author "Mike Evans", ""

library.add_book "Our works", library.authors[2]
library.add_book "Little story", library.authors[3]
library.add_book "Holliday", library.authors[1]
library.add_book "Trees", library.authors[0]
library.add_book "The window", library.authors[4]

library.add_reader "Roy Keane", "rk@post.p", "Lankshir", "Main", "55"
library.add_reader "Bobu Charlton", "bc@post.p", "London", "Main", "55"
library.add_reader "George Best", "rk@post.p", "LA", "Krab", "55"

library.add_order library.books[1], library.readers[0]
library.add_order library.books[2], library.readers[1]
library.add_order library.books[4], library.readers[2]
library.add_order library.books[1], library.readers[2]
library.add_order library.books[2], library.readers[1]
library.add_order library.books[2], library.readers[2]
library.add_order library.books[4], library.readers[1]
library.add_order library.books[1], library.readers[0]
library.add_order library.books[0], library.readers[0]

library.save_to_file("data.txt")
other_library = Library.new
other_library = other_library.read_from_file("data.txt")
other_library.save_to_file("data2.txt")

library.max_read_book
library.max_read_man

puts "------------------------"
puts library.most_popular_books_reader


