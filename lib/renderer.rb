class TowersOfHanoiRenderer
  
  def render(game)
    if game.numberOfDiscsOnTower(3) == 1
      [
      '  |     |     |  ',
      '  |     |     |  ',
      '  |     |     |  ',
      '-----   -    --- ',
      ]
    elsif game.numberOfDiscsOnTower(2) == 1
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
