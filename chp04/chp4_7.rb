a = []
while a.size < 5
  a << 1
end
a # => [1, 1, 1, 1, 1]

a = []
until a.size > 5
  a << 1
end
a # => [1, 1, 1, 1, 1, 1]

a = []
for i in [1,2,3,4]
  a << i * 2
end
a # => [2, 4, 6, 8]

a = 1
while a < 8
  p a
  a += 1
  next if a % 4 == 0
end

