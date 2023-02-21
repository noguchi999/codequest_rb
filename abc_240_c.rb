require 'set'
# ABC240 C
if __FILE__ == $0
  N, X = gets.split.map(&:to_i)
  _p = Set.new

  _p.add 0
  (1..N).each do |i|
    a, b = gets.split.map(&:to_i)
    new_p = Set.new
    _p.each do |now|
      if now + a <= X
        new_p.add(now + a)
      end

      if now + b <= X
        new_p.add(now + b)
      end
    end
    _p = new_p
  end

  if X in _p
    puts "Yes"
  else
    puts "No"
  end
end