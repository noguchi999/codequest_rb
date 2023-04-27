# ABC249 D
if __FILE__ == $0
  N = gets.chomp.to_i
  A = gets.chomp.split.map(&:to_i)

  _count = Array.new(10**6).map{0}
  N.times do |i|
    _count[A[i]] += 1
  end
end