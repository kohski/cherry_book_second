module Greeter
  def hello
    'hello'
  end
end
# インスタンス作成不可能
# 継承不可能
# それがやりたいならクラスを使いやがれ！



module Loggable
  # privateキーワードも有効！
  private
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  # includeするとインスタンスメソッド
  include Loggable
  def title
    log 'title is called'
    'Product title'
  end
end

class User
  # extendするとクラスメソッドになる
  extend Loggable
  def self.name
    log 'name is called'
    'Alice'
  end
end
# 共通の処理だけど、安易に継承をしてはいけない。is_a関係に注目！
# メソッドのみならmoduleを使用してmix_in
product = Product.new
product.title # => "Product title"
User.name # => "Alice"

# >> [LOG] title is called
# >> [LOG] name is called