require_relative 'human'

class Wizard < Human
    attr_accessor :strength, :intelligence, :stealth, :health
    def initialize
        show()
        @health = 40
        @intelligence = 60
    end
    def magic
        @health += 20
        self
    end

    def wiz object
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