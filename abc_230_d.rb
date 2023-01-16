# 区間スケジューリング ABC230 D Dif:963
if __FILE__ == $0
  N, D = gets.split.map(&:to_i)
  section = []

  N.times do |i|
    l, r = gets.split.map(&:to_i)
    section.push [l, r]
  end
  section = section.sort_by {|v| v[0]}
  x = section[0][1]

  ans = 1
  (1..N-1).each do |i|
    li, ri = section[i][0], section[i][1]
    if x + D - 1 < li
      x = ri
      ans += 1
    end
  end

  puts
end