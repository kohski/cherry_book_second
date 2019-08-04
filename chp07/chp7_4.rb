class Klazz
  puts "under class self: #{self}"

  def self.foo
    puts "in class method: #{self}"
  end
  def bar
    puts "in instance method: #{self}"
  end
end

Klazz.foo # => nil
klazz = Klazz.new() # => #<Klazz:0x00007fcfed080498>
klazz.bar

# >> under class self: Klazz
# >> in class method: Klazz
# >> in instance method: #<Klazz:0x00007fcfed080498>