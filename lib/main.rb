require './autoload.rb'
puts 'Please, enter the path with name to library file'
puts '(if you skip, it will use default file "database.yml"):'
lib_file = $stdin.gets.chomp.to_s

generator = Generator.new(lib_file)
generator.generate

library = generator.library

puts "TOP READER IS\n #{library.top_reader(3)}"
puts "MOST POPULAR BOOK IS\n #{library.most_popular_books}"
puts "NUMBER OF READERS OF THE MOST POPULAR BOOKS\n"
puts library.num_most_popular_book

library.save
