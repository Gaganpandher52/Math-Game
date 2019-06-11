require './player'
require './question'
require './game'
class Turn 

    def initialize player
        @player = player
    end

    def run
        question1 = Question.new()
        puts @player.name + " : " + question1.question_is?
        userInput = gets.chomp.to_i
        puts @player.lives
    
        if question1.correct_answer? userInput 
            puts @player.name + " : YES ! You are correct!"
        else
            @player.lost_life
            puts "wrong!"
        end
    
        puts  "lives left: "+@player.lives.to_s
        puts "------NEW TURN-------"
    end
end