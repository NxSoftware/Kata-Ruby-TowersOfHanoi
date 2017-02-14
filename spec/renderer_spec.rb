describe TowersOfHanoiRenderer, '#render' do
  game = TowersOfHanoi.new
  renderer = TowersOfHanoiRenderer.new
  
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
  
end
