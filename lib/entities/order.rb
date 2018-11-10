class Order
  attr_reader :book, :reader, :date

  def initialize(book, reader, date)
    @book = book
    @reader = reader
    @date = date
    validate?
  end

  def to_s
    "#{@book}\nreader: #{@reader}\ndate: #{@date}"
  end

  def validate?
    if @book.nil?
      raise ValidationError.new('Empty book')
    end
    if @reader.nil?
      raise ValidationError.new('Empty reader')
    end
    if @date.nil?
      raise ValidationError.new('Empty date')
    end
  end

end
