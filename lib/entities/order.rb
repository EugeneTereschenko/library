class Order
  attr_accessor :book, :reader, :date
  def initialize(book, reader, date)
    @book = book
    @reader = reader
    @date = date
  end

  def hash
    [@book, @reader, @date].hash
  end

  def to_s
    "#{@book}\nreader: #{@reader}\ndate: #{@date}"
  end
end
