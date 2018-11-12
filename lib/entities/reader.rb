class Reader
  include Validation
  attr_reader :name, :email, :city, :street, :house
  def initialize(name:, email:, city:, street:, house:)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
    validate
  end

  def to_s
    "#{@name} mail: #{@email} city: #{@city} street: #{@street} house #{@house}"
  end

  def validate
    validate_s(@name)
    validate_s(@email)
    validate_s(@city)
    validate_s(@street)
    validate_s(@house)
  end

end
