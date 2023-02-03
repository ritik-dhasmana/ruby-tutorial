





class Board
    attr_accessor :board
     
    def initialize
        self.board = "123456789"
    end

    def print_board()
        # puts self.board;
        puts "";
        for i in 1..9 
            if (i%3 !=0)
                print (board[i-1])
                print (" | ")
            elsif i!=9
                puts (board[i-1])
                puts ("---------")
            else 
                puts (board[i-1])
            end
        end
        puts "";

    end

    def game_over? 
        if ((board[0] == board[1] && board[1] == board[2]) ||  (board[3] == board[4] && board[4] == board[5])||  (board[6] == board[7] && board[7] == board[8])||  (board[0] == board[4] && board[4] == board[8])||  (board[2] == board[4] && board[4] == board[6]))
            return 1;
        end
        return 0;
    end
end



def game_loop()
    is_running ="1";
    puts "Welcome to the best TIC TAC TOE game!"
    puts "press 1 to play the game"
    puts "press 0 to exit the game"
    is_running = gets.chomp
    while is_running !="0" do
        game_won =0;
        game_board = Board.new();
        for i in  0..8 
            game_board.print_board;
            
            puts "It's player #{(i%2) +1}'s turn! Select the tile number to mark it!";
            user_input = gets.chomp
            index = user_input.to_i;
            if i%2 == 1
                game_board.board[index-1] = 'X'
            else 
                game_board.board[index-1] = 'O'
            end
            if game_board.game_over? == 1
                game_board.print_board;
                puts "Wohoo, Player #{(i%2) +1 } Won! Cheers!"
                game_won =1;
                break;
            end
        end
        if game_won == 0
            game_board.print_board
            puts "It's a draw, Good Game!"
        end

        puts "press 1 to play the game again"
        puts "press 0 to exit the game"
        is_running = gets.chomp
    end
end




game_loop();