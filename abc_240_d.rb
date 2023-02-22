# ABC240 D
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  a = gets.split.map(&:to_i)

  que = []
  count = []
  ans = 0

  N.times do |i|
    que.push a[i]
    ans += 1

    if 2 < que.size && que[-1] == que[-2]
      count.push(count[-1]+1)
      if count[-1] == que[-1]
        que[-1].times do |j|
          que.pop
          count.pop
          ans -=1
        end
      end
    else
      count.push 1
    end
    puts ans
  end
end