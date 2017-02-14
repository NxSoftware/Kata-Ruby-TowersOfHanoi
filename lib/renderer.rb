class TowersOfHanoiRenderer
  
  def render(game)
    number_of_towers = 3
    rows = []
    
    (0..game.number_of_discs).each do |i|
      row = []
    
      (1..number_of_towers).each do |t|
        discs = game.tower t
        disc = discs[i]
        case disc
        when nil
          row.push '  |  '
        when 1
          row.push '  -  '
        when 2
          row.push ' --- '
        when 3
          row.push '-----'
        end
      end
      
      rows.unshift row.join(' ')
    end
    
    rows
  end
  
end
