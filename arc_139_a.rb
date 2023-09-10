# ARC139 A
if __FILE__ == $0
  N = gets.to_i
  T = [0] + gets.split.map(&:to_i)

  A = Array.new(N+1, 0)
  (1..N).each do |i|
    k = (A[i-1] / (2**T[i-1])) / 2 + 1
    A[i] = 2**T[i] + 2**(T[i]+1) * k
  end

  puts A[N]
end