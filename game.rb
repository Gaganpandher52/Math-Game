require './player'
require './question'
require './turn'
class Game 
    def initialize 
    @player1 = Player.new('Player1');#make player 1
    @player2 = Player.new('Player2');#make player 2
    end

    def start
        
        current_player = select_another? @player2
        while current_player.lives > 0 
            Turn.new(current_player).run
            if current_player.lost?
                puts "-------#{current_player.name} you lost------"
                puts "-------Game Over---------"
                break;
            end
        
            current_player = select_another? current_player
            
            
        end
    
    end
    def select_another? player
        if player == @player1
            return @player2
        else
            return @player1
        end
    end
end