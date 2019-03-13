class CashRegister
  attr_accessor :total, :discount, :item, :final_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total
    self.total = @total
  end
  
  def add_item(items, price, amount = 1)
    self.total += price * amount
    amount.times do 
      items << amount
    end
    self.final_transaction = price * amount
  end
  
  def apply_discount(price)
     if @discount == 0
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end 
  
  def void_last_transaction
    self.total = self.total - self.final_transaction
  end
    
end
