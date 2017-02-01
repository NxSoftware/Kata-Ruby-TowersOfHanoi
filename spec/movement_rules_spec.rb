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

  describe 'attempting to move disc to a non-existing tower' do
    it 'is not allowed' do
      expect(game.can_move 1, 4).to be(false)
    end
  end

  describe 'attempting to move disc from a non-existing tower' do
    it 'is not allowed' do
      expect(game.can_move 4, 1).to be(false)
    end
  end

  describe 'attempting to move disc 2 onto disc 1' do
    it 'is not allowed' do
      puts 'move disc 2 onto disc 1'
      game.move(1, 2)
      expect(game.can_move 1, 2).to be(false)
    end
  end

end
