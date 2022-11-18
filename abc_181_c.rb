# 数学問題1 Dif:274 ABC181 C
if __FILE__ == $0
  N = gets.split.map(&:to_i)

  points = []
  N.times do |i|
    x, y = gets.split.map(&:to_i)
    points.push [x, y]
  end

  N.times do |i|
    (i+1..N-1).each do |j|
      (j;1, N-1).each do |k|
        x1, y1 = points[i][0], points[i][1]
        x2, y2 = points[j][0], points[j][1]
        x3, y3 = points[k][0], points[k][1]

        if (x2-x1)*(y3-y1) == (y2-y1)*(x3-x1)
          puts "Yes"
          exit
        end
      end
    end
  end

  puts "No"
end