class TowersOfHanoi

  def initialize(number_of_discs = 3)
    initial_tower = (1..number_of_discs).to_a.reverse
    @towers = [[], initial_tower, [], []]
  end

  def numberOfDiscsOnTower(tower_number)
    t = tower tower_number
    t.count unless t == nil
  end

  def topDiscOnTower(tower_number)
    @towers[tower_number].last
  end

  def tower(tower_number)
    t = @towers[tower_number]
    t.dup unless t == nil
  end

  def move(from, to)
    @towers[to].push @towers[from].pop
  end

end
