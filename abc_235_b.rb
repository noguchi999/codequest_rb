# ABC235 B
if __FILE__ == $0
  N = gets.to_i
  H = gets.split.map(&:to_i)

  i = 0
  while i < N - 1 && H[i] < H[i + 1]
    i += 1
  end

  puts H[i]
end
