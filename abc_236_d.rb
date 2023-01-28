# ABC236 D
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  A = Array.new(2*N+1).map{[0]*(2*N+1)}

  (1..2*N-1).each do |i|
    a_tmp = gets.split.map(&:to_i)
    a_tmp.size.times do |j|
      A[i][j+(i+1)] = a_tmp[j]
      A[j+(i+1)][i] = a_tmp[j]
    end
  end

  ans = 0

end