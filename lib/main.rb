require './library.rb'
require './entities/author.rb'
require './entities/book.rb'
require './entities/order.rb'
require './entities/reader.rb'
require 'date'

puts 'Please, enter the path with name to library file'
puts '(for skip, please, press Enter):'
lib_file = $stdin.gets.chomp.to_s

library = Library.new(lib_file)

r1 = Reader.new('Smith', 'smith@smith.com', 'New York City', 'Avenue C', '523')
r2 = Reader.new('John', 'John@mail.com', 'Manchester', 'King Street', '345')
r3 = Reader.new('joseph', 'joseph@mail.com', 'Berlin', 'Chausseestraße', '623')
r4 = Reader.new('Joe', 'Joe@mail.com', 'Warsaw', 'Jerusalem Avenue', '7')
r5 = Reader.new('Ivan', 'Ivan@email.com', 'Dnipro', 'Naberezhnaya Pobedy', '58')

a1 = Author.new('Mark Twain', 'American writer was born in 1835')
a2 = Author.new('Marcel Arland', 'French writer was born in 1899')
a3 = Author.new('Bajza József', 'Hungarian was born in 1804')
a4 = Author.new('Baroti Szabo David', 'Romania was born in 1739')
a5 = Author.new('Michael hartl', 'Austria was born in 1949')

b1 = Book.new('The Adventures of Huckleberry Finn', a1)
b2 = Book.new('Étienne', a2)
b3 = Book.new('Un nouveau mal du siècle', a2)
b4 = Book.new('Világtörténet', a3)
b5 = Book.new('Paradise Lost', a4)
b6 = Book.new('RUBY ON RAILS TUTORIAL', a5)

o1 = Order.new(b1, r1, Date.new)
o2 = Order.new(b2, r2, Date.new)
o3 = Order.new(b1, r3, Date.new)
o4 = Order.new(b4, r3, Date.new)
o5 = Order.new(b4, r2, Date.new)
o6 = Order.new(b4, r5, Date.new)
o7 = Order.new(b2, r2, Date.new)
o8 = Order.new(b5, r4, Date.new)
o9 = Order.new(b3, r1, Date.new)
o10 = Order.new(b5, r2, Date.new)

library.add_book(b1)
library.add_book(b2)
library.add_book(b3)
library.add_book(b4)
library.add_book(b5)
library.add_book(b6)

library.add_author(a1)
library.add_author(a2)
library.add_author(a3)
library.add_author(a4)
library.add_author(a5)

library.add_reader(r1)
library.add_reader(r2)
library.add_reader(r3)
library.add_reader(r4)
library.add_reader(r5)

library.add_order(o1)
library.add_order(o2)
library.add_order(o3)
library.add_order(o4)
library.add_order(o5)
library.add_order(o6)
library.add_order(o7)
library.add_order(o8)
library.add_order(o9)
library.add_order(o10)

puts "TOP READER IS\n #{library.top_reader(3)}"
puts "MOST POPULAR BOOK IS\n #{library.most_popular_books}"
puts "NUMBER OF READERS OF THE MOST POPULAR BOOKS\n"
puts library.num_most_popular_book

library.save
