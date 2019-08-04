class Product
  private
  def name
    'Timtim is cool!'
  end
  # class_methodは当然ながらprivateキーワード直下でもprivateにならない。
  def self.price
    100
  end

  # private定義後にpublicにしたい時はpublicキーワードで。
  public
  def spec
    'great'
  end
end

class DVD < Product
  # privateメソッドはレシーバ取らないルールを守っておけば、継承先でも呼び出せる！
  def to_s
    "name: #{name}"
  end
end

 dvd = DVD.new
 dvd.to_s # => "name: Timtim is cool!"
 DVD.price # => 100
dvd.spec # => "great"