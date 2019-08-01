## 配列のTips
1. 配列代入
```rb
  a,b = 1,2
  a # => 1
  b # => 2

  c,d = [10]
  c # => 10
  d # => nil


  e,f = [100,200,300]
  e # => 100
  f # => 200
```

2. delete(2)は2を消す。
3. delete_if{|n| 条件式}
4. メソッド色々
- map
- select, find_all <==> reject
- find
- inject, reduce
5. &:演算子
引数一つ、関数一回、関数に引数なし => ()にして&:メソッド
```rb
  odds = numbers.select{|n| n.odd?}
  odds = numbers.select(&:odd?) # => [1, 3, 5]
```

6. Range
```rb
(0..5).to_a # => [0, 1, 2, 3, 4, 5]
('a'..'e').to_a # => ["a", "b", "c", "d", "e"]
```

7. 配列の色々
```rb
# 第二引数は長さ
a[1,3] # => [2, 3, 4]

b = [1,2,2,3,4,2,6]
# 引数と一致する値を削除
b.delete(2) # => 2

# 連結
a.concat(b) # => [1, 2, 2, 3, 4, 5]

# rest演算子的なもの
g, *h = 100, 200, 300
g # => 100
h # => [200, 300]

# メソッドのレスト受け
def hoge(a, b, *c)
  text = <<-TEXT # !> assigned but unused variable - text
    a: #{a}
    b: #{b}
    c: #{c}
  TEXT
end

# 初期値は同一のオブジェクト"a"をもたっちゃっているので全ての項が破壊的影響を受ける
b = Array.new(5, "a")

# こっちなら平気
d = Array.new(5){'default'}
```

- with_index関連
```rb
#インデックス番号が欲しい時
a = [1,2,3,4,5]
b = a.map.with_index{|n, i| "#{i}: #{n}"}

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
```

- methodいろいろ
  - times
  - upto / downto
  - step

- 繰り返し
  - while
  - until
  - for
　
- 繰り返し制御
  - break ... loop脱出
  - try catch ... 大域脱出
  - next ... 無視して次のループへ
  - return メソッド自体終わり！