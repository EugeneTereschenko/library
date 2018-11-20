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

    5.times do |time|
     r = Reader.new(name: FFaker::Name.name, email: FFaker::Internet.email, city: FFaker::Address.city, street: FFaker::Address.street_name, house: FFaker::Address.building_number.to_i)
      @readers << r
     a = Author.new(name: FFaker::Book.author, biography: FFaker::Book.description)
      @authors << a
     b = Book.new(title: FFaker::Book.title, author: a)
      @books << b
    end

    o1 = Order.new(book: @books[0], reader: @readers[0], date: Time.new)
    orders << o1
    o2 = Order.new(book: @books[1], reader: @readers[1], date: Time.new)
    orders << o2
    o3 = Order.new(book: @books[0], reader: @readers[2], date: Time.new)
    orders << o3
    o4 = Order.new(book: @books[3], reader: @readers[2], date: Time.new)
    orders << o4
    o5 = Order.new(book: @books[3], reader: @readers[1], date: Time.new)
    orders << o5
    o6 = Order.new(book: @books[3], reader: @readers[4], date: Time.new)
    orders << o6
    o7 = Order.new(book: @books[1], reader: @readers[1], date: Time.new)
    orders << o7
    o8 = Order.new(book: @books[4], reader: @readers[3], date: Time.new)
    orders << o8
    o9 = Order.new(book: @books[2], reader: @readers[0], date: Time.new)
    orders << o9
    o10 = Order.new(book: @books[4], reader: @readers[1], date: Time.new)
    orders << o10
  end

end
