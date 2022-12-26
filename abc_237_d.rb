# deque ABC237 D Dif:544
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  S = gets

  que = []
  que.push N

  (N-1..-1, -1).each do |i|
    if S[i] == "R"
      que.unshift i
    else
      que.push i
    end
  end

  puts que
end