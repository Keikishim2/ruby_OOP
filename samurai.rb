require_relative 'human'

class Samurai < Human
    attr_accessor :strength, :intelligence, :stealth, :health

    @@num_of_samurai = 0

    def initialize
        show()
        @health = 150
        @@num_of_samurai += 1
    end
    def atk object
        if object.class.ancestors.include? Human
            object.health = 0
        else
            puts "Attack another!"
        end
    end
    def med
        @health = 100
    end
    def num
        puts "Samurai: #{@@num_of_samurai}"
    end

    def samurai_display
        show.display
    end
end