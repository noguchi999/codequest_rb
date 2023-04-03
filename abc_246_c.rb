# ABC246 C
if __FILE__ == $0
  n, k, x = gets.split.map(&:to_i)
  a = gets.split.map(&:to_i)

  n.times do |i|
    if a[i] / x <= k
      k -= a[i] / x
      a[i] -= (a[i] / x) * x
    else
      a[i] -= k * x
      k = 0
    end
  end

  a.sort.reverse!
  i = 0
  while i < n && k > 0
    a[i] = 0
    k -= 1
    i += 1
  end

  puts a.inject(:+)
end