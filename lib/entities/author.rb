class Author

  include Validation

  attr_reader :name, :biography
  
  def initialize(name:, biography: '')
    @name = name
    @biography = biography
    validate
  end

  def to_s
    "#{@name}\nbiography: #{@biography}"
  end
  
  def validate
    validate_string(@name)
    validate_string(@biography)
  end
end
