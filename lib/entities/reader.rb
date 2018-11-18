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
    validate_object(@name, String)
    validate_object(@email, String)
    validate_object(@city, String)
    validate_object(@street, String)    
    validate_object(@house, Integer)
    validate_string(@name)
    validate_string(@email)
    validate_string(@city)
    validate_string(@street)
  end
end
