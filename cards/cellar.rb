# Every instance of the Cellar class will cost 2 treasure.
# If the "play_card" method is used on an instance of the Cellar class, it increments the player's action count up by 1, and allows them to discard any number of cards. They then receive one card from the top of their deck for each card discarded.

class Cellar
  def initialize
    @cost = 2
    @played = false
    @vp = 0
    @worth = 0
  end

  def play_card
    give_action
    discard_cards
    draw_cards
  end

  private

  def give_action
    @action += 1
  end

  def discard_cards(num)
  end

  def draw_cards
  end
end