require('minitest/autorun')
require_relative('../drink.rb')

class DrinkTest < Minitest::Test

  def setup
    @drink1 = Drink.new("Gin", 5)
    @drink2 = Drink.new("Beer", 3)
    @drink3 = Drink.new("Champagne", 10)
    @drink4 = Drink.new("Lemonade", 1)
  end

  def test_drink_exists
    assert_equal("Gin", @drink1.drink_name)
  end


end
