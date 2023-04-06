# ABC247 B
if __FILE__ == $0
  N = gets.to_i
  s_list = []
  t_list = []

  N.times do |i|
    s, t = gets.split
    s_list << s
    t_list << t
  end

  N.times do |i|
    other_name_list = []
    N.times do |j|
      if i != j
        other_name_list << s_list[j]
        other_name_list << t_list[j]
      end
    end

    if other_name_list.include?(s_list[i]) && other_name_list.include?(t_list[i])
      puts "No"
      exit
    end
  end

  puts "Yes"
end