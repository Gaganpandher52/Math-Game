require './player'
require './question'




player1 = Player.new('Player1');#make player 1
player2 = Player.new('Player2');#make player 2
question1 = Question.new()

puts player1.name + ":" + question1.question_is?
userInput = gets.chomp.to_i

if question1.correct_answer? userInput 
    puts "You are correct!"
else
    player1.lost_life
    puts "wrong!"
end

puts  "lives left: "+player1.lives.to_s


 