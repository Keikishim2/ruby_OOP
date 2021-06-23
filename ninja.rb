require_relative 'human'

class Ninja < Human
    def initialilze
        show()
        @stealth = 175
    end
    def steal object
        if object.class.ancestors.include? Human
            object.health -= 10
        else
            puts "Steal another!"
        end
        self
    end
    def get_away
        @health -= 15
        self
    end
    def ninja_display
        show.display
        self
    end
end
