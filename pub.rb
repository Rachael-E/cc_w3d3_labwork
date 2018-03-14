class Pub
  attr_reader :pub_name, :drink_inventory

  attr_accessor :cash_in_till

  def initialize(name, till_amount, total_drinks)
    @pub_name = name
    @cash_in_till = till_amount
    @drink_inventory = total_drinks
  end

  def drink_exists?(drink_to_find)
    # loop round @drink_inventory
    for d in @drink_inventory
      p d.drink_name
      if drink_to_find == d.drink_name
        return true
      end

    # if the drink has same name as drink_name
    # then return true
    end
    return false
    # after loop return false
  end

  def get_drink(chosen_drink)
    # Loop round array of drinks and return drink object when drink object's name is == chosen_drink
    for x in @drink_inventory
      if chosen_drink == x.drink_name #drink is a drink object
        return x
      end
    end
  end

end
