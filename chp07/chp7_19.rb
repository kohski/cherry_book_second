class Product
  attr_reader :code, :name
  def initialize(code, name)
    @code = code
    @name = name
  end

  def ==(other)
    if other.is_a?(Product)
      code == other.code
    else
      false
    end
  end
end

a = Product.new('AAA', 'A001')
b = Product.new('BBB', 'B001')
c = Product.new('AAA', 'A001')

a == b # => false
# instanceの==はobject_idの一致が条件
# ということで、これを
a == c # => true