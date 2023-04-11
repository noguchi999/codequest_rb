# ABC248 A
if __FILE__ == $0
  S = gets

  10.times do |i|
    if S.include?(i.to_s)
      puts i
    end
  end
end