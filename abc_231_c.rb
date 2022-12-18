# 二分探索1 ABC231 C Dif:194
if __FILE__ == $0
  N, Q = gets.split.map(&:to_i)
  a = gets.split.map(&:to_i)

  a.sort!
  query = []

  Q.times do |i|
    x = gets.split.map(&:to_i)
    query.push [x, i]
  end
  query.sort!

  ans = [0]*Q
  k = 0
  query.each do |x, i|
    while k < N && a[k] < x
      k += 1
    end

    ans[i] = N - k
  end

  puts ans
end