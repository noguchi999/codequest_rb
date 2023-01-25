# ABC236 C
if __FILE__ == $0
  N, M = gets.split.map(&:to_i)
  S = gets.split
  T = gets.split

  stations = Hash.new {|h, k| h[k] = Hash.new(0)} # Rubyでのdefault dict実装
  M.times do i
    stations[T[i]] = 1
  end

  N.times do |i|
    if stations[S[i]] == 1
      puts "Yes"
    else
      puts "No"
    end
  end
end