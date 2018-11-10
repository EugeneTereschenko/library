class Reader
  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
    validate?
  end

  def to_s
    "#{@name} mail: #{@email} city: #{@city} street: #{@street} house #{@house}"
  end

  def validate?
    unless /\w/ =~ @name
      raise ValidationError.new('Not valid name')
    end
    unless /\w/ =~ @email
      raise ValidationError.new('Not valid email')
    end
    unless /\w/ =~ @city
      raise ValidationError.new('Not valid city')
    end
    unless /\w/ =~ @street
      raise ValidationError.new('Not valid street')
    end
    unless /\w/ =~ @house
      raise ValidationError.new('Not valid house')
    end
  end

end
