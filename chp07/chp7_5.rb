class Product
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  def self.format_price(price)
    "#{price}yen"
  end

  def to_s
    # formatted_price = self.class.format_price(price)
    formatted_price = Product.format_price(price)
    "name: #{name}, price: #{formatted_price}"
  end
end

product = Product.new('AAAAA', 3000)
product.to_s # => "name: AAAAA, price: 3000yen"
