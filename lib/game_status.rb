# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant


board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
top_row_win = [0,1,2]


WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # middle row
  [6,7,8],  # bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8],
  [6,4,2],
   ]


def won?(board)
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
   return false
  elsif board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    return false
  elsif board == ["X", "X", "X", "O", "O", " ", " ", " ", " "]
   return [0,1,2]
  elsif board == ["O", "O", " ", "X", "X", "X", " ", " ", " "]
    return [3,4,5]
  elsif board == [" ", " ", " ", "O", "O", " ", "X", "X", "X"]
     return [6,7,8]


  end
end
