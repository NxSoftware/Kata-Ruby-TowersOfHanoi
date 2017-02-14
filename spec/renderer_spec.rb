describe TowersOfHanoiRenderer, '#render' do
  game = nil
  renderer = TowersOfHanoiRenderer.new
  
  before :example do
    game = TowersOfHanoi.new
  end
  
  describe 'render initial state' do
    it 'renders 3 towers with all discs on tower 1' do
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
    it 'renders 3 towers with disc 2 and 3 on tower 1 and disc 1 on tower 2' do
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
    it 'renders 3 towers with disc 3 on tower 1, disc 1 on tower 2, and disc 2 on tower 3' do
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
    it 'renders 3 towers with disc 3 on tower 1, disc 1 on tower 2, and disc 2 on tower 3' do
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
  
end
