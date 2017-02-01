module Helpers

  def expectMove(from, to, expected_tower_1, expected_tower_2, expected_tower_3)
    game = TowersOfHanoi.new
    game.move(from, to)

    it 'the towers have the expected discs' do
      expect(game.tower(1)).to match(expected_tower_1)
      expect(game.tower(2)).to match(expected_tower_2)
      expect(game.tower(3)).to match(expected_tower_3)
    end
  end

end
