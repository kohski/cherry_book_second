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
