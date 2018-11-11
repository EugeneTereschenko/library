require 'time'

class Generator
  attr_reader :library
  def initialize(path)
    @library = Library.new(path)
  end

  def generate
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

    o1 = Order.new(book: b1, reader: r1, date: Time.new)
    o2 = Order.new(book: b2, reader: r2, date: Time.new)
    o3 = Order.new(book: b1, reader: r3, date: Time.new)
    o4 = Order.new(book: b4, reader: r3, date: Time.new)
    o5 = Order.new(book: b4, reader: r2, date: Time.new)
    o6 = Order.new(book: b4, reader: r5, date: Time.new)
    o7 = Order.new(book: b2, reader: r2, date: Time.new)
    o8 = Order.new(book: b5, reader: r4, date: Time.new)
    o9 = Order.new(book: b3, reader: r1, date: Time.new)
    o10 = Order.new(book: b5, reader: r2, date: Time.new)

    @library.add(b1)
    @library.add(b2)
    @library.add(b3)
    @library.add(b4)
    @library.add(b5)
    @library.add(b6)

    @library.add(a1)
    @library.add(a2)
    @library.add(a3)
    @library.add(a4)
    @library.add(a5)

    @library.add(r1)
    @library.add(r2)
    @library.add(r3)
    @library.add(r4)
    @library.add(r5)

    @library.add(o1)
    @library.add(o2)
    @library.add(o3)
    @library.add(o4)
    @library.add(o5)
    @library.add(o6)
    @library.add(o7)
    @library.add(o8)
    @library.add(o9)
    @library.add(o10)
  end
end
