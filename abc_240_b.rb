# set ABC240 B Dif:19
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  a = gets.split.map(&:to_i)

  puts a.uniq.size
end