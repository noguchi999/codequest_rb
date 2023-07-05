# ARC132 B
if __FILE__ == $0
  n  = gets.to_i
  _p = gets.split.map(&:to_i)

  index_1 = _p.index(1)
  index_n = _p.index(n)

  if index_1 == 0 && index_n == n - 1
    puts 0
    exit
  elsif index_1 == n - 1 && index_n == 0
    puts 1
    exit
  end

  ans = 10**10
  count = 0
  if index_1 - 1 == index_n
    count += index_n + 1
    ans = [count, ans].min
  else
    count += index_1 + 1
    count += 1
    ans [count, ans].min
  end
  
end