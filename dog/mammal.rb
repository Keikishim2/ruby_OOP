class Mammal
    attr_accessor :health
    def initialize
        @health = 150
    end
    def display_all
        puts @health
    end
end