# Enter your object-oriented solution here!

class Multiples

    attr_reader :limit #you can have attr_accessor

    def initialize(limit)
        @limit = limit
    end

    def collect_multiples
        (1...self.limit).select do |num|
            num % 3 == 0 || num % 5 == 0
        end
    end

    def sum_multiples
        collect_multiples.sum
    end


end
