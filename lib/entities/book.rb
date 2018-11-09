# Entity for book
class Book
  attr_writer :title, :author
  def initialize(title, author)
    @title = title
    @author = author
  end

  def hash
    [@title, @author].hash
  end

  def to_s
    "title: #{@title}\nauthor: #{@author}"
  end
end
