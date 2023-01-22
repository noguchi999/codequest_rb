# 二分探索3 ABC246 D Dif:1148
def f(a, b)
  a**3+a**2*b+a*b**2+b**3
end

if __FILE__ == $0
  N = gets.split.map(&:to_i)
  (10**6+100).times do |b|
    l = 0
    r = 10**6+100
    while 1 < r - l
      c = (r+l) / 2
      if f(c, b) < N
        l = c
      else
        r = c
      end
    end

    if N <= f(l, b)
      ans = [ans, f(l, b)].min
    else
      ans = [ans, f(r, b)].min
    end
  end

  puts ans
end