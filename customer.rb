class Customer

  attr_reader :customer_name
  attr_accessor :customer_money

  def initialize(name, money)
    @customer_name = name
    @customer_money = money

  end

  def purchase_drink(pub, drink_type)
    if pub.drink_exists?(drink_type)
      drink = pub.get_drink(drink_type)
      @customer_money -= drink.drink_price
      pub.cash_in_till += drink.drink_price

    end
  end












end
