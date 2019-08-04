class User
  def hello
    'Hello!'
  end

  undef :freeze
  alias :greeting :hello
end

user = User.new
user.hello # => "Hello!"
user.greeting # => "Hello!"
user.freeze # => 
# ~> -:13:in `<main>': undefined method `freeze' for #<User:0x00007f81af0202a0> (NoMethodError)