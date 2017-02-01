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
