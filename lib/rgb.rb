def to_hex(r, g, b)
  [r, g, b].reduce('#'){|acc, cur| acc += cur.to_s(16).rjust(2,'0')}
end

def to_ints(hex)
  # r,g,b = hex[1..2],hex[3..4],hex[5..6]
  hex.scan(/\w\w/).map(&:hex)
end