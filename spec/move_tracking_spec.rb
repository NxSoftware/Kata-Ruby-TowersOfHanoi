def expectMove(from, to, expected_tower_1, expected_tower_2, expected_tower_3)
  game = TowersOfHanoi.new
  game.move(from, to)

  it 'the towers have the expected discs' do
    expect(game.tower(1)).to match(expected_tower_1)
    expect(game.tower(2)).to match(expected_tower_2)
    expect(game.tower(3)).to match(expected_tower_3)
  end
end

describe TowersOfHanoi, '#move' do

  describe 'when the top disc (1) is moved from the first tower to the second tower' do
    expected_tower_1 = [3, 2]
    expected_tower_2 = [1]
    expected_tower_3 = []
    expectMove(1, 2, expected_tower_1, expected_tower_2, expected_tower_3)
  end

  describe 'when the top disc (1) is moved from the first tower to the third tower' do
    expected_tower_1 = [3, 2]
    expected_tower_2 = []
    expected_tower_3 = [1]
    expectMove(1, 3, expected_tower_1, expected_tower_2, expected_tower_3)
  end

end
