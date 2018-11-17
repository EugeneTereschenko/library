class Library

  attr_reader :authors, :books, :readers, :orders

  ALLOWED_TYPES = %i[book reader]

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
    raise ValidationError unless ALLOWED_TYPES.include? param

    orders_group_by = @orders.group_by{ |order| order.public_send(param) }.map{ |order, order_value| [order, order_value.size]}
    orders_group_by.sort_by { |_, orders_quantity| -orders_quantity }.first(quantity).to_h
  end

  def num_most_popular_book(quantity = 3)
    popular_books = most_popular_books(quantity).keys

    books_orders = @orders.select { |order| popular_books.include?(order.book) }
    reader_book_num = Hash.new(0)

    books_orders.each { |order| reader_book_num[order.book] += 1 }
    reader_book_num.values
  end
end
