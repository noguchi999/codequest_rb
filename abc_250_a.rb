# ABC250 A
if __FILE__ == $0
  H, W = gets.split.map(&:to_i)
  R, C = gets.split.map(&:to_i)

  ans = 0
  if 1 <= R - 1
    ans += 1
  end

  if R + 1 <= H
    ans += 1
  end

  if 1 <= C - 1
    ans += 1
  end

  if C + 1 <= W
    ans += 1
  end

  puts ans
end