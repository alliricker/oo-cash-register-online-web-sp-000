
class CashRegister

  attr_accessor :total, :discount, :previous_total, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end


  def add_item(item, price, quantity = 1)
    @items << ("#{item} " * quantity).split(" ")
    @items.flatten!
    @total += price * quantity
    @prev_total = @total
    @prev_total
end


  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

def void_last_transaction()
  @total.to_f -= @previous_total.to_f
end

end
