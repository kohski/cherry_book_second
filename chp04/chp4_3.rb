(1..5).class # => Range
(1...5).class # => Range
('a'..'e').map{|n| n} # => ["a", "b", "c", "d", "e"]
('a'...'e').map{|n| n} # => ["a", "b", "c", "d"]

(1..5).include?(5) # => true
(1...5).include?(5) # => false

def liquid?(templature)
  (0..100).include?(templature)
end

liquid?(-1) # => false
liquid?(0) # => true
liquid?(10) # => true
liquid?(95.8) # => true
liquid?(100) # => true

(0..5).to_a # => [0, 1, 2, 3, 4, 5]
('a'..'e').to_a # => ["a", "b", "c", "d", "e"]

(1..5).reduce(0){|acc, cur| acc += cur} # => 15
