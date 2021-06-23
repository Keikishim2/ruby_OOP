require_relative 'mammal'

class Lion < Mammal
    attr_accessor :health

    def lion_health
        display_health
        self
    end
    def fly
        @health -= 10
        self
    end
    def attack_town
        @health -= 50
        self
    end
    def eat_humans
        @health += 20
        self
    end
end

lioness = Lion.new
lioness.attack_town.attack_town.attack_town.eat_humans.eat_humans.lion_health
