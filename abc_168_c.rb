# シミュレーション Dif:168 ABC203 C
if __FILE__ == $0
  N, K = gets.split.map(&:to_i)

  friends = []
  N.times do |i|
    a, b = gets.split.map(&:to_i)
    friends.push [a, b]
  end
  friends.sort!

  now_village = 0
  now_village += K

  N.times do |i|
    friend_village = friends[i][0]
    friend_mony = friends[i][1]

    if friend_village <= now_village
      now_village += friend_mony
    else
      break
    end
  end

  puts now_village
end