class User
  attr_reader :first_name, :last_name, :age
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end
end

users = []
users << User.new('Alice', 'Ruby', 27)
users << User.new('Bob', 'Python', 35)

def full_name(user)
  "#{user.first_name} #{user.last_name}"
end

users.each{|user| p "name: #{full_name(user)}, age: #{user.age}"}
# >> "name: Alice Ruby, age: 27"
# >> "name: Bob Python, age: 35"