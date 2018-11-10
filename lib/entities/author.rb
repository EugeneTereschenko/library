class Author
  attr_reader :name, :biography
  def initialize(name:, biography:)
    @name = name
    @biography = biography
    validate?
  end

  def to_s
    "#{@name}\nbiography: #{@biography}"
  end
  
  def validate?
    if @name.nil?
      raise ValidationError.new('Empty name')
    end
    unless /\w/ =~ @biography
      raise ValidationError.new('Empty author')
    end
  end
end
