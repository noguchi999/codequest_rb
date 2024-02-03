# ABC235 C
if __FILE__ == $0
  N, Q = gets.split.map(&:to_i)
  a = gets.chomp.split('').map(&:to_i)

  count = Hash.new {|h, k| h[k] = Hash.new(0)}
  index = Hash.new {|h, k| h[k] = Hash.new(0)}

  N.times do |i|
    count[a[i]] += 1
    index["#{a[i]]}_#{[count[a[i]]}"] = i + 1
  end

  Q.times do |i|
    x, k = gets.split.map(&:to_i)
    if index["#{x}_#{k}"] == 0
      puts -1
    else
      puts index["#{x}_#{k}"]
    end
  end
end
