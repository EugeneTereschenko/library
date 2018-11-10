class Reader
  attr_accessor :name, :email, :city, :street, :house

  def initialize(name, email, city, street, house)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end

  def to_s
    "#{@name} mail: #{@email} city: #{@city} street: #{@street} house #{@house}"
  end
end
