class Human
    attr_accessor :strength, :intelligence, :stealth, :health
    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end
    def attack object
        if object.class.ancestors.include?(Human)
            object.health -= 15
            puts "Decreased health by #{object.health}"
        else
            puts "Attack another!"
        end
        self
    end
end

puts "Human:"
human1 = Human.new
human2 = Human.new
