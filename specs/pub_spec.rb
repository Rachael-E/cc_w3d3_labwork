require('minitest/autorun')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class PubTest < Minitest::Test

  def setup
    drink1 = Drink.new("Gin", 5)
    drink2 = Drink.new("Beer", 3)
    drink3 = Drink.new("Champagne", 10)
    drink4 = Drink.new("Shire Lemonade", 1)

    @drinks_in_pub = [drink1, drink2, drink3, drink4]

    @pub = Pub.new("The Prancing Pony", 0, @drinks_in_pub)
  end

  def test_check_pub_exists
    assert_equal("The Prancing Pony", @pub.pub_name)
  end

  def test_check_price_exists
    assert_equal(0, @pub.cash_in_till)
  end

  def test_check_drink_exists
    assert_equal(@drinks_in_pub, @pub.drink_inventory)
    # puts @pub.drink_inventory[0].drink_name
  end

  def test_confirm_drink_exists
    assert_equal(true, @pub.drink_exists?("Gin") )
  end

  def test_get_drink
    @pub.get_drink("Gin")
    assert_equal(true, )
  end

end
