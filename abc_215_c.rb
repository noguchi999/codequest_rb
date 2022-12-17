# itertools ABC215 C Dif:178
require 'set'

if __FILE__ == $0
  s, k = gets.split
  k = k.to_i
  sset = Set.new

  ([]*s.size).permutation.each do |_p|
    stmp = ""
    _p.each do |i|
      stmp += s[i]
    end
    sset.add stmp
  end

  slist = sset.to_a.sort
  puts slist[k-1]
end