require './autoload.rb'
puts 'Please, enter the path with name to library file'
puts '(for skip, please, press Enter):'
lib_file = $stdin.gets.chomp.to_s

library = Library.new(lib_file)

r1 = Reader.new(name: 'Smith', email: 'smith@smith.com', city: 'New York City', street: 'Avenue C', house: '523')
r2 = Reader.new(name: 'John', email: 'John@mail.com', city: 'Manchester', street: 'King Street', house: '345')
r3 = Reader.new(name: 'joseph', email: 'joseph@mail.com', city: 'Berlin', street: 'Chausseestraße', house: '623')
r4 = Reader.new(name: 'Joe', email: 'Joe@mail.com', city: 'Warsaw', street: 'Jerusalem Avenue', house: '7')
r5 = Reader.new(name: 'Ivan', email: 'Ivan@email.com', city: 'Dnipro', street: 'Naberezhnaya Pobedy', house: '58')

a1 = Author.new(name: 'Mark Twain', biography: 'American writer was born in 1835')
a2 = Author.new(name: 'Marcel Arland', biography: 'French writer was born in 1899')
a3 = Author.new(name: 'Bajza József', biography: 'Hungarian was born in 1804')
a4 = Author.new(name: 'Baroti Szabo David', biography: 'Romania was born in 1739')
a5 = Author.new(name: 'Michael hartl', biography: 'Austria was born in 1949')

b1 = Book.new(title: 'The Adventures of Huckleberry Finn', author: a1)
b2 = Book.new(title: 'Étienne', author: a2)
b3 = Book.new(title: 'Un nouveau mal du siècle', author: a2)
b4 = Book.new(title: 'Világtörténet', author: a3)
b5 = Book.new(title: 'Paradise Lost', author: a4)
b6 = Book.new(title: 'RUBY ON RAILS TUTORIAL', author: a5)

o1 = Order.new(book: b1, reader: r1, date: Date.new)
o2 = Order.new(book: b2, reader: r2, date: Date.new)
o3 = Order.new(book: b1, reader: r3, date: Date.new)
o4 = Order.new(book: b4, reader: r3, date: Date.new)
o5 = Order.new(book: b4, reader: r2, date: Date.new)
o6 = Order.new(book: b4, reader: r5, date: Date.new)
o7 = Order.new(book: b2, reader: r2, date: Date.new)
o8 = Order.new(book: b5, reader: r4, date: Date.new)
o9 = Order.new(book: b3, reader: r1, date: Date.new)
o10 = Order.new(book: b5, reader: r2, date: Date.new)

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
