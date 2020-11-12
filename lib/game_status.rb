# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

# board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def won?(board)
  counter = 1
  WIN_COMBINATIONS.each do |win_combination|
  # [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]].each do |win_combination|
    # counterX = 0 
    # counterY = 0
    # win_combination.each { |combo|
    #   if(board[combo] == "X")
    #     counterX += 1 
    #   end 
    # } 
    # win_combination.each { |combo|
    #   if(board[combo] == "Y")
    #     counterY += 1 
    #   end 
    # } 
    # if(counterX == 3 || counterY == 3)
    #   return win_combination 
    # else 
    #   return false 
    # end 
    
    puts counter 
    counter += 1
    
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    # puts "#{win_index_1} #{position_1}"
    # puts "#{win_index_2} #{position_2}"
    # puts "#{win_index_3} #{position_3}"
    
    if (position_1 == "X" && position_2 == "X" && position_3 == "X")
      return win_combination
    else
      false
    end
  end
end


def full?(board)
  if(board.any? { |n| n == " " } || board.any? { |n| n == "" } || board.any? { |n| n == nil })
    false 
  else 
    true
  end
end


def draw?(board)
  if(!won?(board) && full?(board))
    return true 
  else
    return false 
  end 
end 


def over?(board)
  if(won?(board) || full?(board))
    return true 
  else
    return false 
  end 
end 


def winner(board)
  
end 