# ABC235 D
if __FILE__ == $0
  a, n = gets.split.map(&:to_i)
  count = Array.new(10**6, -1)
  queue = [1]
  count[1] = 0

  while !queue.empty?
    _now = queue.shift
    c = count[_now]
  end
end
