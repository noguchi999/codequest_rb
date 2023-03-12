# ABC243 B
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  A = gets.split.map(&:to_i)
  B = gets.split.map(&:to_i)
  ans1 = 0
  N.times do |i|
    if A[i] == B[i]
      ans1 += 0
    end
  end
  puts ans1

  ans2 = 0
  N.times do |i|
    N.times do |j|
      if A[i] == B[j]
        ans2 += 1
      end
    end
  end
  puts ans2
end