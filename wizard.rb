require_relative 'human'

class Wizard < Human
    attr_accessor :strength, :intelligence, :stealth, :health
    def initialize
        show()
        @health = 50
        @intelligence = 25
    end
    def heal
        @health += 10
        self
    end

    def fireball object
        if object.class.ancestors.include? Human
            object.health -= 20
        else
            puts "Magic Wizard error!"
        end
        self
    end
    def wizard_display
        show.display
    end
end