class Checkout

  def initialize(promotional_rules)
    @promotional_rules = promotional_rules
    @basket = []
  end

  def scan(item)
    @basket << item
  end

  def total_before_discount
    @sum = 0
    @basket.each { |item| @sum += item.price }
    @sum
  end

  def total
    # Here, the choice of calculating first the chair discount or the global price discount may have an impact on some specific baskets
    # I suggest to calculate first the chair discount, then the global price discount
    @final = self.total_before_discount
    @final = @final - @promotional_rules.discount_on_chairs(@basket)
    @final = @final - @promotional_rules.dicount_on_global_price(@final)
    @final.round(2)
  end
end
