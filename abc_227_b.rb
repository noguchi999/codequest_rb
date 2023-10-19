# ABC227 B
if __FILE__ == $0
  N = gets.to_i
  S = gets.split.map(&:to_i)

  area = []
  (1..1000).each do |a|
    (1..1000).each do |b|
      area << (4*a*b + 3*a + 3*b)
    end
  end

  count = 0
  N.times do |i|
    unless area.include?(S[i])
      count += 1
    end
  end

  puts count
end
