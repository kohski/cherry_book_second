{}.size # => 0
currencies = {'japan' => 'yen', 'us' => 'dollar', 'italy' => 'euro'} # => {"japan"=>"yen", "us"=>"dollar", "italy"=>"euro"}
currencies.delete('italy')
currencies # => {"japan"=>"yen", "us"=>"dollar"}
currencies.delete('italy'){|key| "#{key} does not exist"} # => "italy does not exist"

