# set values of library
class Library
  attr_accessor :authors, :books, :readers, :orders

  def initialize(path_file)
    @database_interceptor = Db.new(path_file)
    @library_data = @database_interceptor.read_database

    @authors = @library_data ? @library_data.authors : []
    @books = @library_data ? @library_data.books : []
    @readers = @library_data ? @readers = @library_data.readers : []
    @orders = @library_data ? @orders = @library_data.orders : []
  end

  def add_author(author)
    @authors << author
  end

  def add_book(book)
    @books << book
  end

  def add_reader(reader)
    @readers << reader
  end

  def add_order(order)
    @orders << order
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
    @database_interceptor.write_database(self)
  end
end
