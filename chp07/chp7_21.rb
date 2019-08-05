alice = "I am Alice"
bob = "I am Bob"

def alice.shuffle
  chars.shuffle.join
end

alice.shuffle # => "Iea clAmi "
bob.shuffle # => 
# ~> -:9:in `<main>': undefined method `shuffle' for "I am Bob":String (NoMethodError)