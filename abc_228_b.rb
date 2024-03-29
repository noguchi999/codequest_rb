# ABC228 B
if __FILE__ == $0
  N, X = gets.split.map(&:to_i)
  A = [0] + gets.split.map(&:to_i)

  know = Array.new(N, false)
  next_friend = X

  while know[next_friend] == false
    know[next_friend] = true
    next_friend = A[next_friend]
  end

  ans = 0
  (1..N).each do |i|
    if know[i]
      ans += 1
    end
  end

  puts ans
end
