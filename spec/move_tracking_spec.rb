describe TowersOfHanoi, '#move' do

  game = TowersOfHanoi.new

  describe 'when the top disc (1) is moved from the first tower to the second tower' do
    game.move(1, 2)

    it 'there are now 2 discs on the first tower' do
      expect(game.numberOfDiscsOnTower 1).to eq(2)
    end

    it 'there is now 1 disc on the second tower' do
      expect(game.numberOfDiscsOnTower 2).to eq(1)
    end

  end

end
