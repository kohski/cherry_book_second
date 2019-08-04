class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def rename_to_bob
    name = 'Bob' # !> assigned but unused variable - name
  end

  def rename_to_carl
    self.name = 'Carl'
  end

  def rename_to_dave
    @name = 'Dave'
  end

end

user = User.new('Kimkim')
# setterはselfキーワードを入れないと、メソッドスコープの変数と解釈される
user.rename_to_bob # => "Bob"
user.name # => "Kimkim"
user.rename_to_carl # => "Carl"
user.name # => "Carl"
user.rename_to_dave # => "Dave"
user.name # => "Dave"