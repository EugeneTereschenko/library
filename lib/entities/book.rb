class Book
  include Validation
  attr_reader :title, :author
  def initialize(title:, author:)
    @title = title
    @author = author
    validate
  end

  def to_s
    "title: #{@title}\nauthor: #{@author}"
  end

  def validate
    validate_s(@title)
    validate_o(@author, Author)
  end

end
