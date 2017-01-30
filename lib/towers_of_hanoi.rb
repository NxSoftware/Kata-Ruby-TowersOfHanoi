class TowersOfHanoi

  def initialize(number_of_discs = 3)
    @number_of_discs = [nil, number_of_discs, 0, 0]
  end

  def numberOfDiscsOnTower(tower_number)
    @number_of_discs[tower_number]
  end

  def topDiscOnTower(tower_number)
    if tower_number == 1 then
      @size_of_disc_on_tower_1 || 1
    elsif tower_number == 2 then
      @size_of_disc_on_tower_2
    end
  end

  def move(from, to)
    @number_of_discs[from] -= 1
    @number_of_discs[to] += 1
    @size_of_disc_on_tower_1 = 2
    @size_of_disc_on_tower_2 = 1
  end

end
