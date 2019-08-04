## Class

### 基本形
```rb
class User
  attr_reader :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end

  # instance_method
  def hello
    "Hello!"
  end

  #getter
  def name # !> method redefined; discarding old name
    @name
  end
  #setter
  def name=(name)
    @name = name
  end
  # getter/ setter 合わせてattr_accessorで代用可能！

  # クラスメソッドその1
  def self.create_users(names)
    names.map{|name| User.new(name, 30)}
  end
end
```

### self
- クラス構文直下 => class
- classメソッド内 => class
- インスタンスメソッド内 => instance
- instance_method内のsetterだけは、self keyword必須

### 継承関連
- [instance | class].is_a?('Class') => 親でも祖父母でもtrueになる
- [instance].instance_of?('Class') => 親のみ該当
- [instance | class].methods => methodの一覧
- 典型的な例
  - <で継承
  - initialize内でsuper(**arguments)すれば親クラスのinitもいける
  - メソッドのオーバーライド
  - クラスメソッドも同様に継承される
```rb
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
```
- privateメソッド
  - レシーバを取れない
  - self.methodの形式だとclass内で呼べない。（selfを省けばOK）
  - 継承先でもルールを満たせば呼べる
  - classメソッドはprivateにならない。
  - privateキーワードより下でpublicにしたい時は、publicキーワードを使う。
  - メソッド定義後に、privateメソッドにメソッド名を与えてもOK
    ```rb
    class Klass
      def foo # = private
        "foo"
      end
      def bar # = private
        "bar"
      end
      private :foo, :bar
      def baz # = public
        "baz"
      end
    end
    ```
- protectedメソッド
  - レシーバをとるが公開されないメソッド
- 定数の基本
  - class::CONSTANTで呼び出す
  - instanceからは無理
  - private_constantメソッドで非公開定数にできる
    ```rb
      class Product
        DEFAULT_PRICE = 1000
        private_constant :DEFAULT_PRICE
      end
      Product::DEFAULT_PRICE # => 

      # ~> -:5:in `<main>': private constant Product::DEFAULT_PRICE referenced (NameError)
    ```
  - 定数は再代入可能...それって...
    ```rb
      class Product
        DEFAULT_PRICE = 1000 # !> previous definition of DEFAULT_PRICE was here
      end
      Product::DEFAULT_PRICE = 120 # !> already initialized constant Product::DEFAULT_PRICE
      Product::DEFAULT_PRICE # => 120
    ```
  - 変更不能にしたかったらfreezeメソッドを使う
    ```rb
      ['foo', 'bar', 'baz'].map(&:freeze).freeze
    ```
    なら完璧！