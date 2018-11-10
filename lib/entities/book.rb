class Book
  attr_reader :title, :author
  def initialize(title, author)
    @title = title
    @author = author
    validate?
  end

  def to_s
    "title: #{@title}\nauthor: #{@author}"
  end

  def validate?
    unless /\w/ =~ @title
      raise ValidationError.new('Empty title')
    end
    if @author.nil?
      raise ValidationError.new('Not valid author')
    end
  end

end
