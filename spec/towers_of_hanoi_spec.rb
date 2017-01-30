describe TowersOfHanoi, '#create' do

  it 'can create a game' do
    game = TowersOfHanoi.new
    expect(game).not_to be_nil
  end

  it 'has 3 discs on the first tower by default' do
    game = TowersOfHanoi.new
    expect(game.numberOfDiscsOnTower 1).to eq(3)
  end

end
