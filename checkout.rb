class Checkout

  def initialize
    @basket = []
  end

  def scan(item)
    @basket << item
  end

  def total_before_promotion
    @sum = 0
    @basket.each { |item| @sum += item.price }
    @sum
  end

  def promotion_on_chairs
    number_of_chairs = @basket.count { |product| product.code == 1 }
    if number_of_chairs >= 2
      @promotion_on_chairs = number_of_chairs * (9.25 - 8.50)
    else
      @promotion_on_chairs = 0
    end
  end

  def global_price_promotion(global_price)
    @global_price = global_price
    if @global_price >= 60
      @global_promotion = 0.1 * @global_price
    else
      @global_promotion = 0
    end
  end

  def total
    @total = self.total_before_promotion
    @total = @total - self.promotion_on_chairs
    @total = @total - global_price_promotion(@total)
    @total.round(2)
  end
end
