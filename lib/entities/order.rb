class Order
  include Validation
  attr_reader :book, :reader, :date
  def initialize(book:, reader:, date: Time.new)
    @book = book
    @reader = reader
    @date = date
    validate
  end

  def to_s
    "#{@book}\nreader: #{@reader}\ndate: #{@date}"
  end

  def validate
    validate_object(@date, Time)
    validate_object(@book, Book)
    validate_object(@reader, Reader)
  end

end
