class Klass
  def foo
    "foo"
  end

  def bar
    "bar"
  end

  private :foo, :bar

  def baz
    "baz"
  end
end

klass = Klass.new
klass.baz # => "baz"
klass.foo # => 
# ~> -:19:in `<main>': private method `foo' called for #<Klass:0x00007ff8c98b8728> (NoMethodError)