def display_board(array)
    puts " #{array[0]} | #{array[1]} | #{array[2]} "
    puts "-----------"
    puts " #{array[3]} | #{array[4]} | #{array[5]} "
    puts "-----------"
    puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def input_to_index(index)
    return index.to_i - 1
end

def valid_move?(board, index)
    if index >=0 && index < 9 && position_taken?(board, index) == false
        return true
    else
        return false 
    end
end 

def position_taken?(board, index)
    if board[index] == "" || board[index] == " "
        return false
    else     
        return true
    end
end

def move(board, index, value)
    board[index] = value
end

def turn(board)
    display_board(board)
    loop do
        puts "Please enter 1-9:"   
        input = gets.chomp
        index = input_to_index(input)
        value = "X"
        if valid_move?(board, index) == true
            move(board, index, value)
            display_board(board)
            gameOn = false
            break
        end
    end
end

    
