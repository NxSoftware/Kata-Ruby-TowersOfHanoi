describe TowersOfHanoi, '#move' do

  describe 'when the top disc (1) is moved from the first tower to the second tower' do
    game = TowersOfHanoi.new
    game.move(1, 2)

    it 'there are now 2 discs on the first tower' do
      expect(game.numberOfDiscsOnTower 1).to eq(2)
    end

    it 'there is now 1 disc on the second tower' do
      expect(game.numberOfDiscsOnTower 2).to eq(1)
    end

    it 'there are still no discs on the third tower' do
      expect(game.numberOfDiscsOnTower 3).to eq(0)
    end

    it 'the size of the top disc on the first tower is now 2' do
      expect(game.topDiscOnTower 1).to eq(2)
    end

    it 'the size of the top disc on the second tower is now 1' do
      expect(game.topDiscOnTower 2).to eq(1)
    end

  end

end
