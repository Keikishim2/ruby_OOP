class MathDojo
    attr_accessor :result
    def initialize
        @result = 0
    end
    def add *math
        math.each do |x|
            if x.is_a? Array 
                @result += x.reduce(:+) #sum it babe
            else 
                @result += x
            end
        end
        self
    end
    def subtract *math
        math.each do |x|
            if x.is_a? Array 
                @result -= x.reduce(:+) #sum it babe
            else 
                @result -= x
            end
        end
        self
    end
end
puts challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
puts challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15