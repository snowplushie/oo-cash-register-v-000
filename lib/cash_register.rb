class CashRegister
  attr_accessor :total
  
  def initialize(total = 0)
    @total = total
    @discount = discount
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
    if discount == 0
      "There is no discount to apply."
    else
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end
    
end
