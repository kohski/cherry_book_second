currencies = {japan: 'yen', us: 'dollar', italy: 'euro'}
currencies.values # => ["yen", "dollar", "euro"]
currencies.keys # => [:japan, :us, :italy]

currencies.has_key?(:japan) # => true
currencies.has_key?(:china) # => false
currencies.has_key?('japan') # => false
# エイリアスメソッド
currencies.key?(:japan) # => true
currencies.member?(:japan) # => true
currencies.include?(:japan) # => true

# **で展開
target = {us: 'dollar', italy: 'euro'}
hash = {japan: 'yen', **target}
hash # => {:japan=>"yen", :us=>"dollar", :italy=>"euro"}

target = [1,2,3]
array = [0, *target]
array # => [0, 1, 2, 3]

# 擬似キーワード引数
def buy_burger(menu, options = {})
  "menu: #{menu}, options[:drink]: #{options[:drink]}, options[:potato]: #{options[:potato]}"
end

target = {drink: true ,potato: true, salad: false}
#　これだとsaladを呼び出し時に弾けない。
# やっぱりキーワード引数の方がいい。
buy_burger('cheese', target) # => "menu: cheese, options[:drink]: true, options[:potato]: true"

# 可変長引数
def buy_burger_second(menu, potato: true, drink: true, **others)
  "menu: #{menu}, options[:drink]: #{drink}, options[:potato]: #{potato}, others: #{others}"
end
buy_burger_second('teriyaki', drink: true ,potato: true, salad: false) # => "menu: teriyaki, options[:drink]: true, options[:potato]: true, others: {:salad=>false}"

currencies # => {:japan=>"yen", :us=>"dollar", :italy=>"euro"}
arr = currencies.to_a # => [[:japan, "yen"], [:us, "dollar"], [:italy, "euro"]]
arr.to_h # => {:japan=>"yen", :us=>"dollar", :italy=>"euro"}

a = 'foo'
a.upcase # => "FOO"
b = nil
b&.upcase # => nil


limit = 20
limit ||= 10
limit # => 20

err = nil
err ||=10
err # => 10