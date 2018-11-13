class Library
  attr_reader :authors, :books, :readers, :orders
  def initialize(authors:, books:, readers:, orders:)
    @authors = authors
    @books = books
    @readers = readers
    @orders = orders
  end

  def add(obj)
    case obj
    when Author then @authors << obj
    when Book then @books << obj
    when Reader then @readers << obj
    when Order then @orders << obj
    else raise ValidationError
    end
  end

  def top_reader(quantity = 1)
    top_value(:reader, quantity)
  end

  def most_popular_books(quantity = 1)
    top_value(:book, quantity)
  end

  def top_value(param, quantity = 1)
    hash = Hash.new(0)
    @orders.each { |order| hash[order.public_send(param)] += 1 }

    hash.sort_by { |_, num_param| -num_param }.first(quantity).to_h
  end

  def num_most_popular_book(quantity = 3)
    popular_books = most_popular_books(quantity).keys

    books_orders = @orders.select { |order| popular_books.include?(order.book) }
    reader_book_num = Hash.new(0)

    books_orders.each { |order| reader_book_num[order.book] += 1 }
    reader_book_num
  end
end
