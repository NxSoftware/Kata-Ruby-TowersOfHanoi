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
  
end
