def greeting(country="us")
  if country == 'japane'
    puts 'こんにちは'
  else
    puts 'hello'
  end
end

greeting('japan')

self # => main
__FILE__ # => "-"
__LINE__ # => 13
__ENCODING__ # => #<Encoding:UTF-8>


a = 'hello'
b = 'hello'

a.object_id # => 70241405262100
b.object_id # => 70241405262080

c = b
c.object_id # => 70241405262080

a = [1,2,3,4]
b = Marshal.load(Marshal.dump(a))
b # => [1, 2, 3, 4]
b[0] = 100
b # => [100, 2, 3, 4]
a # => [1, 2, 3, 4]





# >> hello