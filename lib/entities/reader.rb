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
   [@name, @email, @city, @street].each do |param|
    validate_object(param, String)
    validate_string(param)
    end
    validate_object(@house, Integer)
  end

end
