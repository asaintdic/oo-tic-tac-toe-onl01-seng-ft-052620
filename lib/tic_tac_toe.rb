class TicTacToe
  
  #Class constant number placements on the board in nested arrays, minus reverse orders except 642(why?)
  WIN_COMBINATIONS = [[0,1,2], [0,4,8], [0,3,6], [1,4,7], [2,5,8], [3,4,5], [6,7,8], [6,4,2]]
  
  #Initialize board, x9 array defualt value nil
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
   
  # 3x3 rows made of the arrays from board, Separate with dash string. Interpoloated instance board variable by index for current state of board
  def display_board
  puts 'display board'
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end
  
  # User makes input, .to_i for index -1 for index rep ( one less than number scale)
  def input_to_index(u_input)
    u_input.to_i - 1 
  end 
  
  def move
  end
 
 # If inputted board index == X or O then true. (can you do reverse with "")
  def position_taken?(index)
   ((@board[index]) == "X") || (@board[index] == "O" )
  end
  
  # If postion_taken and index 0-8(input 1-9) return as true
  def valid_move?(index)
    !position_taken?(index) && index.between?(0,8)
  end 
   
  # Counter start 1, iterate existing board, increment from last play
  def turn_count
    turn_number = 0 
    @board.each do |place|
      if place == "X" || place == "0"
        turn_number += 1 
      end 
    end 
    return turn_number
  end 
  
  
  def current_player
    turn_count % 2 == 0 ? "X" : "0"
  end
    
    


end