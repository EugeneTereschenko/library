class Author
  include Validation

  attr_reader :name, :biography

  def initialize(name:, biography: nil)
    @name = name
    @biography = biography
    validate
  end

  def to_s
    "#{@name}\nbiography: #{@biography}"
  end

  def validate
    validate_object(@name, String)
    validate_object(@biography, String) if @biography
    validate_string(@name)
    validate_string(@biography) if @biography
  end
end
