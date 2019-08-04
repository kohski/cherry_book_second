class Product
  DEFAULT_PRICE = 1000 # !> previous definition of DEFAULT_PRICE was here
end
Product::DEFAULT_PRICE = 120 # !> already initialized constant Product::DEFAULT_PRICE
Product::DEFAULT_PRICE # => 120

