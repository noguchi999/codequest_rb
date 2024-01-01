# ABC233 D
if __FILE__ == $0
  N, K = gets.split.map(&:to_i)
  A = [0] + gets.split.map(&:to_i)

  a_com = Array.new(N+1, 0)
  (1..N).each do |i|
    a_com[i] = a_com[i-1] + A[i]
  end
end
