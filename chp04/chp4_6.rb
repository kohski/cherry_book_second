dimention = [
  [10, 20],
  [30, 40],
  [50, 60]
]

# 2次元配列を変数1つで受けると配列のまま
res = dimention.map do |dim|
  "dim: #{dim}"
end
res # => ["dim: [10, 20]", "dim: [30, 40]", "dim: [50, 60]"]

# 2次元配列を変数2つで受けると展開される
res = dimention.map do |len, wdt|
  "len: #{len}, wdt: #{wdt}"
end
res # => ["len: 10, wdt: 20", "len: 30, wdt: 40", "len: 50, wdt: 60"]

# with_indexをつけると全部１つめにまとまる
res = dimention.map.with_index do |len, wdt|
  "len: #{len}, wdt: #{wdt}"
end
res # => ["len: [10, 20], wdt: 0", "len: [30, 40], wdt: 1", "len: [50, 60], wdt: 2"]

# 配列展開したかったら()で引数を囲むとよし！
res = dimention.map.with_index do |(len, wdt), index|
  "len: #{len}, wdt: #{wdt}, index: #{index}"
end
res # => ["len: 10, wdt: 20, index: 0", "len: 30, wdt: 40, index: 1", "len: 50, wdt: 60, index: 2"]

# methodいろいろ
sum = []
5.times do |n|
  sum << "#{n}: tim"
end
sum # => ["0: tim", "1: tim", "2: tim", "3: tim", "4: tim"]

sum = []
10.upto(14){|n| sum << n}
sum # => [10, 11, 12, 13, 14]

sum = []
15.downto(9){|n| sum << n}
sum # => [15, 14, 13, 12, 11, 10, 9]

# stepは「初期値.step(上限, 幅)」という構文。ちょっと変わってる。
a = []
1.step(100, 2){|n| a << n}
a # => [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81, 83, 85, 87, 89, 91, 93, 95, 97, 99]
