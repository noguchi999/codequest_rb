# ABC226 C
if __FILE__ == $0
  N = gets.to_i

  connect = Array.new(N).map{[]}
  T = [0]
  (1..N).each do |i|
    TKA = gets.split.map(&:to_i)
    T << TKA[0]
    K = TKA[1]
  end
end