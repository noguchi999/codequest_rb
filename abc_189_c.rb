# pypy Dif:565 ABC189 C
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  A = gets.split.map(&:to_i)

  ans = -10**15
  N.times do |l|
    a_min = A[l]
    (l..N-1).each do |r|
      a_min = [a_min, A[r]].min
      ans = [ans, a_min*(r-l+1)].max
    end
  end

  puts ans
end