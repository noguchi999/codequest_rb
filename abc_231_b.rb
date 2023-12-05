# ABC231 B
if __FILE__ == $0
  N = gets.split.map(&:to_i)

  votes = []
  candidates = Set.new

  N.times do |i|
    S = gets.chomp
    votes << S
    candidates << S
  end


end
