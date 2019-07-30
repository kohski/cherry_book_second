numbers = [1,2,3,4,5]

by_ten = numbers.map{|n| n*10}
by_ten # => [10, 20, 30, 40, 50]

odds = numbers.select{|n| n.odd?}
odds # => [1, 3, 5]
odds = numbers.find_all{|n| n.odd?}
odds # => [1, 3, 5]
odds = numbers.reject{|n| n.even?}
odds # => [1, 3, 5]

target = numbers.find{|n| n.odd?}
target # => 1

sum = numbers.inject{|acc,cur| acc += cur }
sum # => 15

odds = numbers.select(&:odd?) # => [1, 3, 5]