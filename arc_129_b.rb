# ARC129 B
if __FILE__ == $0
  N = gets.chomp.split().map(&:to_i)
  l_max = 0
  r_min = 10**10

  N.times do |k|
    l, r = gets.chomp.split().map(&:to_i)
    l_max = [l, l_max].max
    r_min = [r, r_min].min

    if l_max <= r_min
      puts 0
    else
      ((l_max - r_min) / 2).ceil
    end
  end
end