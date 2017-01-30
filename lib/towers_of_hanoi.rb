class TowersOfHanoi

  def initialize(number_of_discs = 3)
    @number_of_discs = number_of_discs
  end

  def numberOfDiscsOnTower(tower_number)
    if tower_number == 3 then
      0
    elsif tower_number == 2 then
      @number_if_discs_on_tower_2 || 0
    elsif tower_number == 1
      @number_of_discs
    end
  end

  def topDiscOnTower(tower_number)
    if tower_number == 1 then
      @size_of_disc || 1
    end
  end

  def move(from, to)
    @number_of_discs -= 1
    @number_if_discs_on_tower_2 = 1
    @size_of_disc = (@size_of_disc || 1) + 1
  end

end
