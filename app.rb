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


products =[product1, product2, product3]
checkouts = [co1, co2, co3]


puts "---"
puts ""
puts "Welcome to our amazing furniture store!"
puts "Here you can buy:"
puts ""
products.each do |product|
  puts "00#{product.code} - #{product.name} - £#{product.price}"
end
puts ""
puts "If you buy 2 or more very cheap chairs then the price drops to £8.50"
puts "If you spend over £60, then you get 10% off of your purchase"
puts ""
puts "---"
puts ""
checkouts.each do |co|
  puts "If you buy:"
  puts "#{co.basket.count { |product| product.code == 1 }} #{product1.name}"
  puts "#{co.basket.count { |product| product.code == 2 }} #{product2.name}"
  puts "#{co.basket.count { |product| product.code == 3 }} #{product3.name}"
  puts "-> You will pay £#{co.total} - instead of £#{co.total_before_discount.round(2)}"
  puts ""
end
puts "Thank you for coming! :)"
puts ""
puts "---"

