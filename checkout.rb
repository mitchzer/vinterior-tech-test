class Checkout

  def initialize
    @basket = []
  end

  def scan(item)
    @basket << item
  end

  def total
    @sum = 0
    @basket.each { |item| @sum += item.price }
    @sum
  end
end
