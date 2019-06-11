
class Question
    
    def initialize 
       @number_left = rand(1..20);
       @number_right = rand(1..20);

    end

    def correct_answer? answer
        answer == @number_left + @number_right
    end

    def question_is?
        "What does #{@number_left} + #{@number_right} equal ?"
    end


    

end