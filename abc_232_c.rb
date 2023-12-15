# ABC232 C
if __FILE__ == $0
  N, M = gets.chomp.split.map(&:to_i)

  takahashi = Array.new(N+1) { Array.new(N+1, false) }
  M.times do |i|
    A, B = gets.chomp.split.map(&:to_i)
    takahashi[A][B] = true
    takahashi[B][A] = true
  end

  aoki_input = []
  M.times do |i|
    C, D = gets.chomp.split.map(&:to_i)
    aoki_input << [C, D]
  end
end
