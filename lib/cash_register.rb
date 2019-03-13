class CashRegister
  attr_accessor :total
  
  def initialize(total = 0)
    @total = total
  end
  
  def discount
    @discount = 20
  end
  
  def add_item(item, price, amount = 1)
    self.total += price * amount
    amount.times do 
      item << amount
    end
  end
  
  def apply_discount
    if discount != 0
      self.total 
    else
      "There is no discount to apply."
  end
    
end
