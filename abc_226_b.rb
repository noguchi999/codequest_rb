# ABC226 B
if __FILE__ == $0
  N = gets.to_i

  seq = Set.new
  N.times do |i|
    LA = gets.split.map(&:to_i)
    seq.add LA
  end

  puts seq.size
end