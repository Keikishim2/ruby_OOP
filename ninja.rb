require_relative 'human'

class Ninja < Human
    def initialilze
        show()
        @stealth = 105
    end
    def steal object
        if object.class.ancestors.include? Human
            object.health -= 10
        else
            puts "Steal another!"
        end
        self
    end
    def esc
        @health -= 15
        self
    end
    def ninja_display
        show.display
        self
    end
end
