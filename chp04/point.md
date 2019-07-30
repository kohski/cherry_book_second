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