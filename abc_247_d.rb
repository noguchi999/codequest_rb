# ABC247 D
if __FILE__ == $0
  Q = gets.to_i

  que = []
  Q.times do |i|
    query = gets.split.map(&:to_i)
    if query[0] == 1
      x = query[1]
      c = query[2]
      que << [x, c]
    else
      c = query[1]
      ans = 0
      while 0 < c
        num, count = que.shift
        if count <= c
          ans += num * count
          c -= count
        else
          ans += num * c
          que.unshift([num, count - c])
          c = 0
        end
      end
    end
  end

  puts ans
end