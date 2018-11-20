require './autoload.rb'
puts 'Please, enter the path with name to library file'
puts '(if you skip, it will use default file "database.yml"):'

lib_file = $stdin.gets.chomp.to_s
db = Db.new(lib_file)
library_data = db.read_database
generator = Generator.new(library_data)
generator.generate

library = Library.new(authors: generator.authors, books: generator.books, readers: generator.readers, orders: generator.orders)

puts "TOP READER IS\n #{library.top_reader(3)}"
puts "MOST POPULAR BOOK IS\n #{library.most_popular_books}"
puts "NUMBER OF READERS OF THE MOST POPULAR BOOKS\n"
puts library.num_most_popular_book

db.write_database(library)