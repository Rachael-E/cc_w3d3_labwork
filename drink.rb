class Drink

attr_reader :drink_name, :drink_price

  def initialize(name, price)
    @drink_name = name
    @drink_price = price
  end
end
