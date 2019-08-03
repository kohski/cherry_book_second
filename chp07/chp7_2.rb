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

user = User.new("tim",27) # => #<User:0x00007f90aa04e718 @name="tim", @age=27>
user.hello # => "Hello!"
user.name # => "tim"
user.name = "tum" # => "tum"
user.name # => "tum"


names = ['Yoko', 'Miyamoto', 'Nagamine']
users = User.create_users(names)
users.each do |user| # !> shadowing outer local variable - user
  p user
end

# ~> -:3:in `initialize': wrong number of arguments (given 1, expected 2) (ArgumentError)
# ~> 	from -:25:in `new'
# ~> 	from -:25:in `block in create_users'
# ~> 	from -:25:in `map'
# ~> 	from -:25:in `create_users'
# ~> 	from -:37:in `<main>'