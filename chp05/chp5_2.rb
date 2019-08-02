{}.size # => 0
currencies = {'japan' => 'yen', 'us' => 'dollar', 'italy' => 'euro'} # => {"japan"=>"yen", "us"=>"dollar", "italy"=>"euro"}
currencies.delete('italy')
currencies # => {"japan"=>"yen", "us"=>"dollar"}
currencies.delete('italy'){|key| "#{key} does not exist"} # => "italy does not exist"

# key_word_argument
def buy_burger(menu, potato: true, drink: true)
  "menu: #{menu} / potato: #{potato} /drink: #{drink}"
end

# keyword引数は省略可能
buy_burger('teriyaki') # => "menu: teriyaki / potato: true /drink: true"
# keyword引数は入れ替えも可能
buy_burger('teriyaki', drink: false, potato: false) # => "menu: teriyaki / potato: false /drink: false"
