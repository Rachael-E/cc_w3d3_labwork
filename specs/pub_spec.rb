require('minitest/autorun')
require_relative('../pub.rb')
require_relative('../drink.rb')

class PubTest < Minitest::Test

  def setup
    drink1 = Drink.new("Gin", 5)
    drink2 = Drink.new("Beer", 3)
    drink3 = Drink.new("Champagne", 10)
    drink4 = Drink.new("Lemonade", 1)

    @drinks_in_pub = ([drink1, drink2, drink3, drink4])

    @pub = Pub.new("The Prancing Pony", 0, @drinks_in_pub)
  end

  def test_check_pub_exists
    assert_equal("The Prancing Pony", @pub.pub_name)
  end

end
