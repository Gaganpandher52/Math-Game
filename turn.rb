require './player'
require './question'
require './game'
class Turn 

    def initialize player
        @player = player
    end

    def run
        puts "------NEW TURN-------"
        question1 = Question.new()
        puts @player.name + " : " + question1.question_is?
        userInput = gets.chomp.to_i
        
    
        if question1.correct_answer? userInput 
            puts @player.name + " : YES ! You are correct!"
        else
            @player.lost_life
            puts "NO! you are wrong!"
        end
    
        puts  "#{@player.name} Lives:"+@player.lives.to_s
        
    end
end