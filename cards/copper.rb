# When a new instance of the copper class is created, it is worth 1 treasure.

class Copper
  attr_reader :worth

  def initialize
    @worth = 1
    @cost = 0
    @vp = 0
  end
end