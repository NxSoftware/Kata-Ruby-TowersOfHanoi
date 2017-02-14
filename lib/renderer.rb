class TowersOfHanoiRenderer
  
  def render(game)
    if game.numberOfDiscsOnTower(2) == 1
      [
      '  |     |     |  ',
      '  |     |     |  ',
      ' ---    |     |  ',
      '-----   -     |  ',
      ]
    else
      [
      '  |     |     |  ',
      '  -     |     |  ',
      ' ---    |     |  ',
      '-----   |     |  ',
      ]
    end
  end
  
end
