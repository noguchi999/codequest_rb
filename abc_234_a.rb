# 関数 ABC234 A Dif:7
def f(x)
  x**2 + 2*x + 3

if __FILE__ == $0
  t = gets.split.map(&:to_i)

  puts f(f(f(t)+t)+f(f(t)))
end