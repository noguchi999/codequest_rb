# 全探索2 Dif:379 ABC193 C
require "set"

if __FILE__ == $0
  N = gets.split.map(&:to_i)

  able_num = Set[]
  (2..10**5+9).each do |a|
    (2..99).each do |b|
      if a**b <= N
        able_num.add a**b
      else
        break
      end
    end
  end

  puts N - able_num.size
end