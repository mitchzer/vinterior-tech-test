class PromotionalRules

  def discount_on_chairs(basket)
    @number_of_chairs = basket.count { |product| product.code == 1 }
    if @number_of_chairs >= 2
      @promotion_on_chairs = @number_of_chairs * (9.25 - 8.50)
    else
      @promotion_on_chairs = 0
    end
  end

  def dicount_on_global_price(global_price)
    @global_price = global_price
    if @global_price >= 60
      @global_promotion = 0.1 * @global_price
    else
      @global_promotion = 0
    end
  end

end
