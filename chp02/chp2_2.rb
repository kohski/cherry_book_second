country = 'Italy'
greeting = '' 

if country == 'japan'
  greeting = 'こんにちは'
elsif country == 'us'
  greeting = 'hello'
elsif country == 'Italy'
  greeting = 'Gratie!'
else
  greeting = 'hi'
end

greeting  # => "Gratie!"

country = "Korea"
greeting2 = ''
case country
when 'japan'
  greeting2 = 'こんいちは'
when 'us'
  greeting2 = 'hello'
when 'Italy'
  greeting2 = 'Gratie'
else
  greeting2 = 'hi'
end

greeting2  # => "hi"
