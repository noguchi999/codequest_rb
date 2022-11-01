# BFS(幅優先探索) 3
def explore(maze, start_record, start_column)
  maze_count = Array.new(H).map{[-1]*W}
  maze_count[start_record][start_column] = 0

  que = []
  que.push [start_record, start_column]
  while 0 < que.size
    now_record, now_column = que.shift
    now_count = maze_count[now_count][now_column]

    if 0 <= now_record-1 < H && 0 <= now_column < W
      if maze[now_record-1][now_column] == "."
        if maze_count[now_record-1][now_column] == -1
          maze_count[now_record-1][now_column] = now_count + 1
          que.push [now_record-1, now_column]
        end
      end


    end
  end
end

if __FILE__ == $0
  H, W = gets.split.map(&:to_i)

  maze = []
  H.times do |i|
    maze.push gets.split.map(&:to_i)
  end

end