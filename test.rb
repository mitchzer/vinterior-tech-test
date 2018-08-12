require_relative "product"
require_relative "checkout"

product1 = Product.new(1, "Very Cheap Chair", 9.25)
product2 = Product.new(2, "Little table", 45.00)
product3 = Product.new(3, "Funky light", 19.95)

puts "#{product1.name}"
puts "#{product2.name}"
puts "#{product3.name}"

co1 = Checkout.new
co1.scan(product1)
co1.scan(product2)
co1.scan(product3)
puts co1.total

co2 = Checkout.new
co2.scan(product1)
co2.scan(product3)
co2.scan(product1)
puts co2.total

co3 = Checkout.new
co3.scan(product1)
co3.scan(product2)
co3.scan(product1)
co3.scan(product3)
puts co3.total
