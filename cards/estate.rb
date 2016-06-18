# Every instance of the Estate class will cost 2 treasure.
# Every instance of the Estate class be worth 1 victory point.

class Estate
  attr_reader :worth, :vp

  def initialize
    @cost = 2
    @worth = 0
    @vp = 1
  end
end