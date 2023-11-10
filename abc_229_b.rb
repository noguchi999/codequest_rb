# ABC229 B
if __FILE__ == $0
  _a, _b = gets.chomp.split

  _a.reverse!
  _b.reverse!

  keta = [_a.length, _b.length].min
  keta.times do |i|
    a_int = _a[i].to_i
    b_int = _b[i].to_i
    if 10 <= a_int + b_int
      puts "Hard"
      exit
    end
  end

  puts "Easy"
end
