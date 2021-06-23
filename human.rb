class Human
    attr_accessor :strength, :intelligence, :stealth, :health
    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end
    def display_all
        puts "Strength: #{@strength}, Intelligence: #{@intelligence}, Stealth: #{@stealth}, Health: #{@health}"
    end
    def attack object
        if object.class.ancestors.include? Human
            object.health -= 20
        else
            puts "Attack another!"
        end
        self
    end
end