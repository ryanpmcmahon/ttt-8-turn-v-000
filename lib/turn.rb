def input_to_index(input)
  index = input.to_i - 1
end

def display_board(board)
  board_break = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts board_break
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts board_break
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  move = board[index]
  index > -1 && move != nil && move != "X" && move != "O"
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  statement = "Please enter 1-9:"
  puts statement
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else turn(board)
  end
end
