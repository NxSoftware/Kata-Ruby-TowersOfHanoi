describe TowersOfHanoi, '#create' do

  game = TowersOfHanoi.new

  it 'has 3 discs on the first tower by default' do
    expect(game.numberOfDiscsOnTower 1).to eq(3)
  end

  it 'has 0 discs on the second tower by default' do
    expect(game.numberOfDiscsOnTower 2).to eq(0)
  end

  it 'has 0 discs on the third tower by default' do
    expect(game.numberOfDiscsOnTower 3).to eq(0)
  end

  it 'has no tower four' do
    expect(game.numberOfDiscsOnTower 4).to be_nil
  end

  it 'can create a game with an arbitrary number of discs on the first tower' do
    (4..10).each do |i|
      game = TowersOfHanoi.new i
      expect(game.numberOfDiscsOnTower 1).to eq(i)
      expect(game.numberOfDiscsOnTower 2).to eq(0)
      expect(game.numberOfDiscsOnTower 3).to eq(0)
    end
  end

  it 'the size of the top-most disc on the first tower is 1' do
    expect(game.topDiscOnTower 1).to eq(1)
  end

  it 'the size of the top-most discs on the second and towers are nil (no discs)' do
    expect(game.topDiscOnTower 2).to be_nil
    expect(game.topDiscOnTower 3).to be_nil
  end

end
