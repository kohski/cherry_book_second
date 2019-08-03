## hashとsimbol

### hash

1. 定義、参照、追加、削除
```rb
currency = {
  'japan' => 'yen',
  'us' => 'dollar',
  'Italy' => 'euro'
}

currency['china'] = 'yuen'
currency # => {"japan"=>"yen", "us"=>"dollar", "Italy"=>"euro", "china"=>"yuen"}
currency['china'] # => "yuen"

currencies.delete('italy')
currencies # => {"japan"=>"yen", "us"=>"dollar"}
# 見たからない時の返り値はブロックで渡す
currencies.delete('italy'){|key| "#{key} does not exist"} # => "italy does not exist"
```

### simbol
1. 見た目は文字列
2. 内部的には整数(.object_id)
3. 新たにメモリ上に領域を確保されないので、効率よい
4. イミュータブルなオブジェクト

### simbol再び
keyword引数
```rb
# key_word_argument
def buy_burger(menu, potato: true, drink: true)
  "menu: #{menu} / potato: #{potato} /drink: #{drink}"
end
# keyword引数は省略可能
buy_burger('teriyaki') # => "menu: teriyaki / potato: true /drink: true"
# keyword引数は入れ替えも可能
buy_burger('teriyaki', drink: false, potato: false) # => "menu: teriyaki / potato: false /drink: false"
```
### hash再び
- .keys / .values
```rb
currencies = {japan: 'yen', us: 'dollar', italy: 'euro'}
currencies.values # => ["yen", "dollar", "euro"]
currencies.keys # => [:japan, :us, :italy]
```
- .has_key? = key? = member? = include?
```rb
currencies.key?(:japan) # => true
currencies.member?(:japan) # => true
currencies.include?(:japan) # => true
```

- 展開！
```rb
hash = {japan: 'yen', **target}
```

- 可変長で受ける！
```rb
# 可変長引数
def buy_burger_second(menu, potato: true, drink: true, **others)
  "menu: #{menu}, options[:drink]: #{drink}, options[:potato]: #{potato}, others: #{others}"
end
```

to_a <=> to_h
```rb
currencies # => {:japan=>"yen", :us=>"dollar", :italy=>"euro"}
arr = currencies.to_a # => [[:japan, "yen"], [:us, "dollar"], [:italy, "euro"]]
arr.to_h # => {:japan=>"yen", :us=>"dollar", :italy=>"euro"}
```

- &.演算子
```rb
a = 'foo'
a.upcase # => "FOO"
b = nil
b&.upcase # => nil
```
b.upcaseだとエラーになる！


- ||=
すでに値があればそれを生かして、ないなら代入する！
```rb
limit = 20
limit ||= 10
limit # => 20

err = nil
err ||=10
err # => 10
```