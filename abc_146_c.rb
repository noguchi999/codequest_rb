# 二分探索
def price(n)
  d = n.to_s.size
  $a*n + $b*d
end

if __FILE__ == $0
  $a, $b, x = gets.split(" ").map{|x| x.to_i}
  if x < price(1)
    puts 0
    exit
  end

  left = 1
  right = 10**20
  while 1 < right - left
    n = (left + right) / 2
    if price(n) <= x
      left = n
    else
      right = n
    end
  end

  if 10**9 < left
    left = 10**9
  end
  puts left
end