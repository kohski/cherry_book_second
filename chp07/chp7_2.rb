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

user = User.new("tim",27) # => #<User:0x00007fec6b85a660 @name="tim", @age=27>
user.hello # => "Hello!"
user.name # => "tim"
user.name = "tum" # => "tum"
user.name # => "tum"


names = ['Yoko', 'Miyamoto', 'Nagamine']
users = User.create_users(names)
users.each do |user| # !> shadowing outer local variable - user
  p user
end

# >> #<User:0x00007fec6b8b7db0 @name="Yoko", @age=30>
# >> #<User:0x00007fec6b8b7d88 @name="Miyamoto", @age=30>
# >> #<User:0x00007fec6b8b7d38 @name="Nagamine", @age=30>