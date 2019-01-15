require './pieces'

class Board 
   attr_reader :board
   def initialize
    @board = Array.new(8) {Array.new(8)}
   end

   def [](pos)
     row,col = pos
     board[row][col]
   end

   def []=(pos,val)
     row,col = pos
     board[row][col] = val
   end

   def valid_pos?(pos)
      return false if board[pos].nil?
      true
   end

   def move_piece(start_pos,end_po)
    self[end_pos], self[start_pos] = self[start_pos], nil
   end

   def add_piece(pos, piece)
   if self[pos].nil?
      self[pos] = piece
    else
      raise "not empty!"
    end
    
   end
end

