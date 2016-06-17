# The instance of the player class will have an array to represent their deck, another array to represent their hand, and another array to represent their discard pile.
# The player will have the following methods:
# Play card
# Buy card

require_relative "cards/copper"
require_relative "cards/estate"

class Player
  attr_reader :deck, :hand, :discard_pile

  def initialize
    @deck = [Copper.new, Copper.new, Copper.new, Copper.new, Copper.new, Copper.new, Copper.new, Estate.new, Estate.new, Estate.new]
    @hand = []
    @discard_pile = []
  end

  # Need to add "@worth = 0" to non-treasure cards to make this code function properly
  def eval_worth
    total_worth = 0
    @hand.each { |card| total_worth += card.worth }
    total_worth
  end

  def see_hand
    @hand.each do |card|
      puts card.class
    end
  end

  def eval_vp
    total_vp = 0
    [@deck, @hand, @discard_pile].each {|player_area| player_area.each {|card| total_vp += card.vp}}
    total_vp
  end
end

player = Player.new
p player.deck
p player.eval_worth
player.see_hand
p player.eval_vp