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

  ans_name = ""
  ans_count = 0
  candidates.each do |name|
    count = votes.count(name)
    if ans_count < count
      ans_name = name
      ans_count = count
    end
  end

  puts ans_name
end
