# ARC135 A
if __FILE__ == $0
  X = gets.split.map(&:to_i)

  mod = 998244353
  count = Hash.new(0)
  count[X] = 1
  num_set = Set.new([X])

  while 4 < num_set.max
    tmp_set = Set.new
    num_set.each do |_p|
      if 4 < _p
        if _p%2 == 0
          count[_p/2] += 2 * count[_p]
          tmp_set.add(_p/2)
        elsif _p%2 == 1
          count[_p/2] += count[_p]
          count[_p/2 + 1] += count[_p]
          tmp_set.add(_p/2)
          tmp_set.add(_p/2 + 1)
        end
      end
    end
end