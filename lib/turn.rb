def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
 if board[index] == " " || board[index] == "" || board[index] == nil
   false
 else
   true
 end
end


def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end

def get_input
  gets
end


def input_to_index(user_input)
  user_input.to_i-1
end

def move(array, index, value="X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = get_input
  index = input_to_index(input)
  if !valid_move?(board, index)
    turn(board)
  end
  move(board, index)
  display_board(board)

end
