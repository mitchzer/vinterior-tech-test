require_relative "product"
require_relative "checkout"
require_relative "promotional_rules"

product1 = Product.new(1, "Very Cheap Chair", 9.25)
product2 = Product.new(2, "Little table", 45.00)
product3 = Product.new(3, "Funky light", 19.95)


promo = PromotionalRules.new


co1 = Checkout.new(promo)
co1.scan(product1)
co1.scan(product2)
co1.scan(product3)

co2 = Checkout.new(promo)
co2.scan(product1)
co2.scan(product3)
co2.scan(product1)

co3 = Checkout.new(promo)
co3.scan(product1)
co3.scan(product2)
co3.scan(product1)
co3.scan(product3)


puts co1.total
puts co2.total
puts co3.total
