class User
  def hello
    "Hello, #{self.name}"
  end

  # private_methodはレシーバを指定して呼び出し出来ない。
  private
  def name
    'Alice'
  end
end

user = User.new
user.hello # => "Hello, Alice"
