require 'time'

class Generator
  attr_reader :authors, :books, :readers, :orders

  def initialize(library_data)
    @library_data = library_data
    @authors = @library_data&.authors || []
    @books = @library_data&.books || []
    @readers = @library_data&.readers || []
    @orders = @library_data&.orders || []
  end

  def generate
    r1 = Reader.new(name: 'Smith', email: 'smith@smith.com', city: 'New York City', street: 'Avenue C', house: 523)
    @readers << r1
    r2 = Reader.new(name: 'John', email: 'John@mail.com', city: 'Manchester', street: 'King Street', house: 345)
    @readers << r2
    r3 = Reader.new(name: 'joseph', email: 'joseph@mail.com', city: 'Berlin', street: 'Chausseestraße', house: 623)
    @readers << r3
    r4 = Reader.new(name: 'Joe', email: 'Joe@mail.com', city: 'Warsaw', street: 'Jerusalem Avenue', house: 7)
    @readers << r4
    r5 = Reader.new(name: 'Ivan', email: 'Ivan@email.com', city: 'Dnipro', street: 'Naberezhnaya Pobedy', house: 58)
    @readers << r5

    a1 = Author.new(name: 'Mark Twain', biography: 'American writer was born in 1835')
    @authors << a1
    a2 = Author.new(name: 'Marcel Arland', biography: 'French writer was born in 1899')
    @authors << a2
    a3 = Author.new(name: 'Bajza József', biography: 'Hungarian was born in 1804')
    @authors << a3
    a4 = Author.new(name: 'Baroti Szabo David', biography: 'Romania was born in 1739')
    @authors << a4
    a5 = Author.new(name: 'Michael hartl', biography: 'Austria was born in 1949')
    @authors << a5

    b1 = Book.new(title: 'The Adventures of Huckleberry Finn', author: a1)
    @books << b1
    b2 = Book.new(title: 'Étienne', author: a2)
    @books << b2
    b3 = Book.new(title: 'Un nouveau mal du siècle', author: a2)
    @books << b3
    b4 = Book.new(title: 'Világtörténet', author: a3)
    @books << b4
    b5 = Book.new(title: 'Paradise Lost', author: a4)
    @books << b5
    b6 = Book.new(title: 'RUBY ON RAILS TUTORIAL', author: a5)
    @books << b6

    o1 = Order.new(book: b1, reader: r1, date: Time.new)
    orders << o1
    o2 = Order.new(book: b2, reader: r2, date: Time.new)
    orders << o2
    o3 = Order.new(book: b1, reader: r3, date: Time.new)
    orders << o3
    o4 = Order.new(book: b4, reader: r3, date: Time.new)
    orders << o4
    o5 = Order.new(book: b4, reader: r2, date: Time.new)
    orders << o5
    o6 = Order.new(book: b4, reader: r5, date: Time.new)
    orders << o6
    o7 = Order.new(book: b2, reader: r2, date: Time.new)
    orders << o7
    o8 = Order.new(book: b5, reader: r4, date: Time.new)
    orders << o8
    o9 = Order.new(book: b3, reader: r1, date: Time.new)
    orders << o9
    o10 = Order.new(book: b5, reader: r2, date: Time.new)
    orders << o10
  end

end
