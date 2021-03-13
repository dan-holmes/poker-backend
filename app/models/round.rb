class Round
    attr_reader :hands, :pot, :community_cards

    def initialize(players, deck)
        @deck = deck
        @deck.reset
        @deck.shuffle
        @players = players
        @hands = []
        @pot = 0
        @community_cards = []
    end

    def deal_hands
        for player in @players do
            cards = []
            2.times { cards.push(@deck.deal_card) }
            @hands.push(Hand.new(cards, player))
        end
    end

    def deal_community
        @community_cards.push(@deck.deal_card)
    end

    def deal_flop
        3.times { deal_community }
    end
end