class User
  attr_reader :name
  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  protected
  def weight
    @weight
  end
end

alice = User.new('Alice', 45)
bob = User.new('Bob', 60)
alice.heavier_than?(bob) # => false
alice.weight # =>
# ~> -:21:in `<main>': protected method `weight' called for #<User:0x00007fa8068346f8 @name="Alice", @weight=45> (NoMethodError)