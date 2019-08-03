text = <<-TEXT
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">playstation4</option>
<option value="gb">gameboy</option>
</select>
TEXT

text.scan(/<option value="([a-z0-9_]*)"(?: selected)?>(.*)<\/option>/) # => [["none", ""], ["wii_u", "Wii U"], ["ps4", "playstation4"], ["gb", "gameboy"]]
text.gsub(/<option value="([a-z0-9_]*)"(?: selected)?>(.*)<\/option>/,'\1') # => "none\nwii_u\nps4\ngb\n</select>\n"

text = "my birth day is 1989year5month28day"
text.match(/(\d+)year(\d+)month(\d+)day/) # =>