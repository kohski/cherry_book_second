class Product
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  #BasicClassのオーバーライド
  def to_s
    "name: #{name}, price: #{price}"
  end

  def self.hello
    "hello! definited in Product class"
  end
end

product = Product.new('AAA', 3000)
product.name # => "AAA"
product.price # => 3000
product.to_s # => "name: AAA, price: 3000"

class DVD < Product
  attr_reader :running_time
  def initialize(name, price, running_time)
    super(name, price) #== 引数が全て一緒ならsuperでもOK。super()だと引数渡らないので注意が必要
    @running_time = running_time
  end

  #BasicClassのオーバーライド
  def to_s
    # superで親クラスの同名メソッドを取得可能
    "#{super}, running_time: #{running_time}"
  end
end

dvd = DVD.new('dddd', 3000, 3600)
dvd.name # => "dddd"
dvd.price # => 3000
dvd.running_time # => 3600
dvd.to_s # => "name: dddd, price: 3000, running_time: 3600"

# 親クラスのクラスメソッドも継承される。
DVD.hello # => "hello! definited in Product class"