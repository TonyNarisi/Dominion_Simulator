# The instance of the player class will have an array to represent their deck, another array to represent their hand, and another array to represent their discard pile.
# The player will have the following methods:
# Play card
# Buy card

require_relative "cards/copper"

class Player
  attr_reader :deck, :hand, :discard_pile

  # Need to add victory cards to starting deck
  def initialize
    @deck = [Copper.new, Copper.new, Copper.new, Copper.new, Copper.new, Copper.new, Copper.new]
    @hand = []
    @discard_pile = []
  end

  # Need to add "@worth = 0" to non-treasure cards to make this code function properly
  def eval_worth
    total_worth = 0
    @hand.each do |card|
      total_worth += card.worth
    end
    p total_worth
  end
end

player = Player.new
p player.deck
player.eval_worth