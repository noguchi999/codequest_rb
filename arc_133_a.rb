# ARC133 A
if __FILE__ == $0
  N  = gets.to_i
  A = gets.split.map(&:to_i)

  x = A[0]
  (1..N).each do |i|
    if x <= A[i]
      x = A[i]
    else
      break
    end
  end

  ans=[]
  N.times do |i|
    if A[i] != x
      ans << A[i]
    end
  end

  puts ans
end