# ABC228 C
if __FILE__ == $0
  N, K = gets.split.map(&:to_i)
  point = []

  N.times do |i|
    pi_1, pi_2, pi_3 = gets.split.map(&:to_i)
    point << (pi_1 + pi_2 + pi_3)
  end

  point_sorted = point.sort_reverse
  lowest_point = point_sorted[K-1]

  N.times do |i|
    if lowest_point <= point[i] + 300
      puts "Yes"
    else
      puts "No"
    end
end
