class Pub
  attr_reader :pub_name, :till_amount

  def initialize(name, till_amount, total_drinks)
    @pub_name = name
    @cash_in_till = till_amount
    @drink_inventory = total_drinks
  end

end
