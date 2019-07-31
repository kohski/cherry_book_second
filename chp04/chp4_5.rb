%w(kim kim kim) # => ["kim", "kim", "kim"]

'Ruby'.chars # => ["R", "u", "b", "y"]

'timtimtimtim'.split('i') # => ["t", "mt", "mt", "mt", "m"]

Array.new(4) # => [nil, nil, nil, nil]
a = Array.new(4) {|n| (n + 1) * 10 + n} # => [10, 21, 32, 43]
a # => [10, 21, 32, 43]
a[0] = 100
a # => [100, 21, 32, 43]

# 初期値は同一のオブジェクト"a"をもたっちゃっているので全ての項が破壊的影響を受ける
b = Array.new(5, "a")
b # => ["a", "a", "a", "a", "a"]
b[0].object_id # => 70186942720600
b[1].object_id # => 70186942720600
c = b[0] # => "a"
c # => "a"
c.upcase!
b # => ["A", "A", "A", "A", "A"]

d = Array.new(5){'default'}
d[0].object_id # => 70186942703380
d[1].object_id # => 70186942703360

#インデックス番号が欲しい時
a = [1,2,3,4,5]
b = a.map.with_index{|n, i| "#{i}: #{n}"}
b # => ["0: 1", "1: 2", "2: 3", "3: 4", "4: 5"]

