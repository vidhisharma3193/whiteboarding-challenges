require 'pry'
class Deck

    attr_accessor :cards

    def initialize
        @rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        @suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
        @cards = []

        @rank.each do |rank|
            @suit.each do |suit|
                new_card = Card.new(suit ,rank)
                @cards << new_card

            end
        end
    end

    def choose_card
        pick_card = @cards.sample
        @cards.delete(pick_card)

    end

end

class Card
    attr_accessor :rank, :suit
    @@all = []

    def initialize(suit ,rank)
        @rank = rank
        @suit = suit
        @@all << self
    end

    def self.all
        @@all
    end

end

binding.pry
0
