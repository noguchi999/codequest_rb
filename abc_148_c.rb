# 最小公倍数 Dif:172 ABC148 C
def lcm(x, y)
  (x*y) / x.gcd(y)
end

if __FILE__ == $0
  A, B = gets.split.map(&:to_i)

  puts lcm(A, B)
end