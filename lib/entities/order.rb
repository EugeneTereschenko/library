class Order
  include Validation
  attr_reader :book, :reader, :date
  def initialize(book:, reader:, date:)
    @book = book
    @reader = reader
    @date = date
    validate
  end

  def to_s
    "#{@book}\nreader: #{@reader}\ndate: #{@date}"
  end

  def validate
    validate_o(@date, Time)
    validate_o(@book, Book)
    validate_o(@reader, Reader)
  end

end
