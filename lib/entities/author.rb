class Author
  attr_writer :name, :biography
  def initialize(name, biography)
    @name = name
    @biography = biography
  end

  def to_s
    "#{@name}\nbiography: #{@biography}"
  end
end
