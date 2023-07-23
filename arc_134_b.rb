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

  l = 0
  r = N - 1
  x = target(count)

  while l < r
    if s[l] == x
      count[s[l]] -= 1
      l += 1
      x = target(count)
    elsif s[r] == target(count)
      count[s[r]] -= 1
      count[s[l]] -= 1
      s[r], s[l] = s[l], s[r]
      l += 1
      r -= 1
      x = target(count)
    else
      count[s[r]] -= 1
      r -= 1
    end
  end

  puts s.join
end