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
  
  def apply_discount(price)
     if @discount = discount
       self.discount = (price * discount)/100
       @total -= self.discount
      return "After the discount, the total comes to $#{self.total}."
    else
       "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total = self.total - self.final_transaction
  end
    
end
