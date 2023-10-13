# ABC227 A
if __FILE__ == $0
  N, K, A = gets.split.map(&:to_i)

  human = A
  count = 1
  while human < K
    count += 1
    human += 1
    if human == N + 1
      human = 1
    end
  end

  puts human
end