# ABC235 D
if __FILE__ == $0
  a, n = gets.split.map(&:to_i)
  count = Array.new(10**6, -1)
  queue = [1]
  count[1] = 0

  while !queue.empty?
    _now = queue.shift
    c = count[_now]
    to = _now * a

    if to < 10**6
      if count[to] == -1
        count[to] = c + 1
        queue << to
      end
    end

    if 10 <= _now && _now%10 != 0
      now_str = _now.to_s
      to_str = now_str[-1] + now_str[0..-2]
    end
  end
end
