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