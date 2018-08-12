require_relative "product"

product1 = Product.new(1, "Very Cheap Chair", 9.25)
product2 = Product.new(2, "Little table", 45.00)
product3 = Product.new(3, "Funky light", 19.95)

puts "#{product1.name}"
puts "#{product2.name}"
puts "#{product3.name}"
