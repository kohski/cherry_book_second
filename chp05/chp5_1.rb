currency = {
  'japan' => 'yen',
  'us' => 'dollar',
  'Italy' => 'euro'
}

currency['china'] = 'yuen'
currency # => {"japan"=>"yen", "us"=>"dollar", "Italy"=>"euro", "china"=>"yuen"}
currency['china'] # => "yuen"

# 配列系メソッドで巡回可能
key_value = currency.map do |key, value|
  "#{key}: #{value}"
end
key_value # => ["japan: yen", "us: dollar", "Italy: euro", "china: yuen"]

# 配列系メソッドで引数一つで受けるとkey / valueを配列で受ける
array = currency.map do |arr|
  "#{arr}"
end
array # => ["[\"japan\", \"yen\"]", "[\"us\", \"dollar\"]", "[\"Italy\", \"euro\"]", "[\"china\", \"yuen\"]"]


