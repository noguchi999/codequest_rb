# ARC134 B
def target(count)
  (97..122).each do |code|
    alphabet = code.chr
    if 1 <= count[alphabet]
      return alphabet
    end
  end

  return nil
end

if __FILE__ == $0
  N = gets.to_i
  s = gets

  s = s.split(//)
  count = Hash.new(0)

  s.each do |x|
    count[x] += 1
  end
end