require('minitest/autorun')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class CustomerTest < Minitest::Test

  def setup
    drink1 = Drink.new("Gin", 5)
    drink2 = Drink.new("Beer", 3)
    drink3 = Drink.new("Champagne", 10)
    drink4 = Drink.new("Shire Lemonade", 1)

    @drinks_in_pub = [drink1, drink2, drink3, drink4]

    @pub = Pub.new("The Prancing Pony", 0, @drinks_in_pub)

    @customer = Customer.new("Bilbo Baggins", 50)

  end

  def test_customer_name
    assert_equal("Bilbo Baggins", @customer.customer_name)
  end

  def test_customer_money
    assert_equal(50, @customer.customer_money)
  end

  def test_customer_buys_drink

    @customer.purchase_drink(@pub, "Gin")
    assert_equal(45, @customer.customer_money)
  end







end
