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
    validate_object(@name, String)
    validate_object(@biography, String) unless @biography.nil?
    validate_string(@name)
    validate_string(@biography) unless @biography.nil?
  end
end
