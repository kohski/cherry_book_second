class Product
  # class_instance_variable => class自身が保有している変数
  @name = 'Product'
  def self.name
    # class_instance_variable
    @name
  end

  def initialize(name)
    # instance_variable => instanceが保有している変数
    @name = name
  end

  def name
    # instance_variable
    @name
  end
end

class DVD < Product
  @name = 'DVD'
  def self.name
    @name
  end
  def upcase_name
    @name.upcase
  end
end

Product.name # => "Product"
product = Product.new('a great movie')
product.name # => "a great movie"
Product.name # => "Product"

Product.name # => "Product"
DVD.name # => "DVD"

dvd = DVD.new('A great movie')
dvd.name # => "A great movie"
dvd.upcase_name # => "A GREAT MOVIE"


Product.name # => "Product"
DVD.name # => "DVD"