require_relative './pieces.rb'
require_relative './board_renderer_text.rb'
require_relative './board.rb'

b = Board.new
b[[2, 2]] = King.new(b, [2,2], :black)
p b[[2, 2]].available_moves

#piece = b[[0, 0]]
#puts piece.enemy?([0, 1])
#puts piece.enemy?([0, 0])

#text_board = BoardRendererText.new(b)
#puts text_board.render

#pawn = Pawn.new([0, 0 ], :black)
#p pawn.to_s

#pawn = Pawn.new([0, 0 ], :white)
#p pawn.to_s