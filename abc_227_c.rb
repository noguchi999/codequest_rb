# 全探索3 ABC227 C Dif:692
if __FILE__ == $0
  N = gets.split.map(&:to_i)

  ans = 0
  a = 1
  while a**3 <= N
    b = a
    while a*b**2 <= N
      ans += (N/(a*b)).to_i - b + 1
      b += 1
    end
    a += 1
  end

  puts ans
end