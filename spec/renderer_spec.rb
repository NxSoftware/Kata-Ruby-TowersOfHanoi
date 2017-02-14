describe TowersOfHanoiRenderer, '#render' do
  game = nil
  renderer = TowersOfHanoiRenderer.new
  
  before :example do
    game = TowersOfHanoi.new
  end
  
  describe 'render initial state' do
    it 'renders 3 towers with [3, 2, 1], [], []' do
      expectedOutput = [
      '  |     |     |  ',
      '  -     |     |  ',
      ' ---    |     |  ',
      '-----   |     |  ',
      ]
      expect(renderer.render game).to eq(expectedOutput)
    end
  end
  
  describe 'move disc 1 to tower 2' do
    it 'renders 3 towers with [3, 2], [1], []' do
      game.move 1, 2
      expectedOutput = [
      '  |     |     |  ',
      '  |     |     |  ',
      ' ---    |     |  ',
      '-----   -     |  ',
      ]
      expect(renderer.render game).to eq(expectedOutput)
    end
  end
  
  describe 'move disc 2 to tower 3' do
    it 'renders 3 towers with [3], [1], [2]' do
      game.move 1, 2
      game.move 1, 3
      expectedOutput = [
      '  |     |     |  ',
      '  |     |     |  ',
      '  |     |     |  ',
      '-----   -    --- ',
      ]
      expect(renderer.render game).to eq(expectedOutput)
    end
  end
  
  describe 'move disc 1 to tower 3' do
    it 'renders 3 towers with [3], [], [2, 1]' do
      game.move 1, 2
      game.move 1, 3
      game.move 2, 3
      expectedOutput = [
      '  |     |     |  ',
      '  |     |     |  ',
      '  |     |     -  ',
      '-----   |    --- ',
      ]
      expect(renderer.render game).to eq(expectedOutput)
    end
  end
  
  describe 'move disc 3 to tower 2' do
    it 'renders 3 towers with [], [3], [2, 1]' do
      game.move 1, 2
      game.move 1, 3
      game.move 2, 3
      game.move 1, 2
      expectedOutput = [
      '  |     |     |  ',
      '  |     |     |  ',
      '  |     |     -  ',
      '  |   -----  --- ',
      ]
      expect(renderer.render game).to eq(expectedOutput)
    end
  end
  
end
