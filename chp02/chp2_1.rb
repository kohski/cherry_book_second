n = 11
if n > 10
  p '10より大きい' # => "10より大きい"
else
  p '10以下' # => 
end

year = 30

p %q[kimkim is a good guy (#{year})] # => "kimkim is a good guy (\#{year})"
p %Q[kimkim is a good guy (#{year})] # => "kimkim is a good guy (30)"


p <<-TEXT
  kimkim is a
  good guy
TEXT

sprintf('%0.3f', 1.2) # => "1.200"

0b11111111 # => 255

10.class # => Integer
1.5.class # => Float

