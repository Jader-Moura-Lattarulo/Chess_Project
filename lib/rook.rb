class Rook < Piece
    def to_s
        @color == :black ? "♜ " : "♖ "
    end

    def available_moves
        moves = []
        current_r, current_c = location

        move_dirs.each do |(dr, dc)|
            current_r, current_c = location

            loop do 
            current_r += dr
            current_c += dc
            loc = [current_r, current_r]
            break if !board.in_bounds?(loc)
            if board.empty?(loc)
                moves << loc
            end
            if enemy?(loc)
                moves << loc
                break 
            end
        end
    end

    def move_dirs
        [
            [0, 1],
            [0, -1],
            [1, 0],
            [-1, 0]
        ]
    end
end