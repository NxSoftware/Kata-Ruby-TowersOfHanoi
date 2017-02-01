describe TowersOfHanoi, '#can_move' do
  game = TowersOfHanoi.new

  describe 'attempting to move disc to adjacent tower' do
    it 'is allowed' do
      expect(game.can_move 1, 2).to be(true)
    end
  end

  describe 'attempting to move disc to non-adjacent tower' do
    it 'is allowed' do
      expect(game.can_move 1, 3).to be(true)
    end
  end

end
