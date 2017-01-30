describe TowersOfHanoi, '#create' do

  it 'can create a game' do
    game = TowersOfHanoi.new
    expect(game).not_to be_nil
  end
  
end
