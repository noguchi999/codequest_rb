# ABC235 C
if __FILE__ == $0
  N, Q = gets.split.map(&:to_i)
  a = gets.chomp.split('').map(&:to_i)

  count = Hash.new {|h, k| h[k] = Hash.new(0)}
  index = Hash.new {|h, k| h[k] = Hash.new(0)}

  N.times do |i|
    count[a[i]] += 1
  end
end
