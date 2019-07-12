def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if(index.between?(0,8))
    if(!position_taken?(board, index))
      return true
    end
  else
    return false
  end
end

def input_to_index(input)
  index = input.to_i(10) -1
end

def move(board, index, symbol="X")
    board[index] = symbol
end

def turn (board)
  puts "Please enter 1-9: "
  index = input_to_index(gets.to_i)
  if (valid_move(board, index))
    move(board, index, symbol)
    display_board(board)
    turn(board)
  else
    turn(board)
  end
end
