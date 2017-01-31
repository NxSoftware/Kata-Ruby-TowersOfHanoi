class TowersOfHanoi

  def initialize(number_of_discs = 3)
    initial_tower = (1..number_of_discs).to_a.reverse
    @towers = [[], initial_tower, [], []]
  end

  def numberOfDiscsOnTower(tower_number)
    tower = @towers[tower_number]
    tower.count if tower
  end

  def topDiscOnTower(tower_number)
    @towers[tower_number].last
  end

  def move(from, to)
    @towers[to].push @towers[from].pop
  end

end
