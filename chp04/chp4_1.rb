[].class # => Array

a = [1,2,3]
a # => [1, 2, 3]

a[5] = 10

a # => [1, 2, 3, nil, nil, 10]

a,b = 1,2
a # => 1
b # => 2

c,d = [10]
c # => 10
d # => nil


e,f = [100,200,300]
e # => 100
f # => 200

numbers = [1,2,3,4,5]
sum = 0
numbers.each do |n|
  sum += n
end
sum # => 15

a = [1,2,3,2,4,5]
a.delete(2) # 2を削除
a # => [1, 3, 4, 5]
b = [1,2,3,2,4,5]
b.delete(10)
b # => [1, 2, 3, 2, 4, 5]

c = [1,2,3,4,5]
c.delete_if{|n|n.odd?}
c # => [2, 4]
