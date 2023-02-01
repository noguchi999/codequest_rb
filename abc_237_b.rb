# ABC237 B
if __FILE__ == $0
  N, W = gets.split.map(&:to_i)
  A = []
  H.times do |i|
    a_tmp = gets.split.map(&:to_i)
    A.push a_tmp
  end

  B = Array.new(W).map{[0*H]}
  W.times do |i|
    H.times do |j|
      B[i][j] = A[j][i]
    end
  end

  W.times do |i|
    puts B[i]
  end
end