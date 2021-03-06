class Deck
    attr_reader :cards

    def initialize(cards = generate_cards)
        @cards = cards
    end

    def shuffle
        @cards.shuffle!
    end

    def deal_card
        @cards.pop
    end

    def reset(cards = generate_cards)
        @cards = cards
    end

    def generate_cards
        cards = []
        for suit in ['hearts', 'diamonds', 'spades', 'clubs'] do
            for value in 2..14 do
                cards.push(Card.new(suit, value))
            end
        end
        return cards
    end
end