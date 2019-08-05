class String
  def shuffle
    chars.shuffle.join
  end
end

a = 'Timtim likes yoko very much'
a.shuffle # => "msie  ieiTvkmcryoohtk mul y"


class User
  def hello
    "hello!"
  end
end

user = User.new
user.hello # => "hello!"

class User
  alias :hello_original :hello
  def hello
    "hello, Yoko"
  end
end

user.hello # => "hello, Yoko"
user.hello_original # => "hello!"
