class PromotionalRules

  def discount_on_chairs(basket)
    @number_of_chairs = basket.count { |product| product.code == 1 }
    @number_of_chairs >= 2 ? @number_of_chairs * (9.25 - 8.50) : 0
  end

  def dicount_on_global_price(global_price)
    global_price > 60 ? (0.1 * global_price) : 0
    # If someone spends more than £60, I understand he gets 10% discount on the global purchase
    # If someone has a basket value of £59, he will pay £59
    # If someone has a basket value of £65, he will pay £58.5
  end
end
