class CashRegister
  attr_accessor :total, :discount, :item, :final_transaction
  
  def initialize(total = 0)
    @total = total
    @discount = 20
    @items = []
  end
  
  def add_item(items, price, amount = 1)
    self.total += price * amount
    amount.times do 
      items << amount
    end
    self.final_transaction = price * amount
  end
  
  def apply_discount
     if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total = self.total - self.final_transaction
  end
    
end
