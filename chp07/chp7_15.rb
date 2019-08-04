class Product
  @@name = "Product"
  def self.name
    @@name
  end
  def initialize(name)
    @@name = name
  end
  def name
    @@name
  end
end

class DVD < Product
  @@name = 'DVD'
  def self.name
    @@name
  end
  def upcase_name
    @@name.upcase
  end
end

# line15で@@name="DVD"になってる
Product.name # => "DVD"
DVD.name # => "DVD"

# Product initialize時に@@name = 'Agreat movie'
product = Product.new('A great movie')
product.name # => "A great movie"

# インスタンス生成時に定義したけど、クラスにも反映されているし、
# サブクラスにも反映
Product.name # => "A great movie"
DVD.name # => "A great movie"

# サブクラスのインスタンス生成時のも上へ。
dvd = DVD.new('An awesome film')
dvd.name # => "An awesome film"
dvd.upcase_name # => "AN AWESOME FILM"

# 各所へ反映
product.name # => "An awesome film"
Product.name # => "An awesome film"
DVD.name # => "An awesome film"