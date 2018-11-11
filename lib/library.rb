class Library
  attr_accessor :authors, :books, :readers, :orders

  def initialize(path_file)
    @db = Db.new(path_file)
    read_data
  end

  def read_data
    @library_data = @db.read_database

    @authors = @library_data ? @library_data.authors : []
    @books = @library_data ? @library_data.books : []
    @readers = @library_data ? @readers = @library_data.readers : []
    @orders = @library_data ? @orders = @library_data.orders : []
  end

  def add(obj)
    case obj
    when Author
      @authors << obj
    when Book
      @books << obj
    when Reader
      @readers << obj
    when Order
      @orders << obj
    end
  end

  def top_reader(quantity = 1)
    hash = Hash.new(0)
    @orders.each { |order| hash[order.reader] += 1 }

    hash.sort_by { |_k, v| v }.reverse.first(quantity).to_h
  end

  def most_popular_books(quantity = 1)
    hash = Hash.new(0)
    @orders.each { |order| hash[order.book] += 1 }

    hash.sort_by { |_k, v| v }.reverse.first(quantity).to_h
  end

  def num_most_popular_book(quantity = 3)
    popular_books = most_popular_books(quantity).keys

    books_orders = @orders.select { |order| popular_books.include?(order.book) }
    reader_book_num = Hash.new(0)

    books_orders.each { |order| reader_book_num[order.book] += 1 }
    reader_book_num
  end

  def save
    @db.write_database(self)
  end
end
