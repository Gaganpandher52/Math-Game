
class Player
    attr_accessor :name, :lives
    def initialize name
        @lives = 3;
        @name = name

    end
    def lost_life
        @lives = @lives - 1
    end
    def lost?
        @lives <=0
    end

end