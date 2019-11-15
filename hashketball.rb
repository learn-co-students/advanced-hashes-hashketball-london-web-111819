require 'pry'

def game_hash
  {
    away: {team_name: 'Charlotte Hornets',
           colors: %w[Turquoise Purple],
           players: [
      {player_name: 'Jeff Adrien',
        number: 4,
        shoe: 18,
        points: 10,
        rebounds: 1,
        assists: 1,
        steals: 2,
        blocks: 7,
        slam_dunks: 2},
        {player_name: 'Bismack Biyombo',
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10},
          {player_name: 'DeSagna Diop',
            number: 2,
            shoe: 14,
            points: 24,
            rebounds: 12,
            assists: 12,
            steals: 4,
            blocks: 5,
            slam_dunks: 5},
            {player_name: 'Ben Gordon',
              number: 8,
              shoe: 15,
              points: 33,
              rebounds: 3,
              assists: 2,
              steals: 1,
              blocks: 1,
              slam_dunks: 0},
              {player_name: 'Kemba Walker',
                number: 33,
                shoe: 15,
                points: 6,
                rebounds: 12,
                assists: 12,
                steals: 7,
                blocks: 5,
                slam_dunks: 12}
                ]
  },
  home: { team_name: 'Brooklyn Nets',
    colors: %w[Black White],
    players: [
      { player_name: 'Alan Anderson',
        number: 0,
        shoe: 16,
        points: 22,
        rebounds: 12,
        assists: 12,
        steals: 3,
        blocks: 1,
        slam_dunks: 1},
        { player_name: 'Reggie Evans',
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7},
          {player_name: 'Brook Lopez',
            number: 11,
            shoe: 17,
            points: 17,
            rebounds: 19,
            assists: 10,
            steals: 3,
            blocks: 1,
            slam_dunks: 15},
            { player_name: 'Mason Plumlee',
              number: 1,
              shoe: 19,
              points: 26,
              rebounds: 11,
              assists: 6,
              steals: 3,
              blocks: 8,
              slam_dunks: 5},
              {player_name: 'Jason Terry',
                number: 31,
                shoe: 15,
                points: 19,
                rebounds: 2,
                assists: 2,
                steals: 4,
                blocks: 11,
                slam_dunks: 1}
                ] }
  }
end

def num_points_scored(player_search)
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == player_search
        return player[:points]
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == name
        return player[:shoe]
      end
    end
  end
end

def team_colors(team_input)
  if team_input.downcase == "charlotte hornets"
    return game_hash[:away][:colors]
  else return game_hash[:home][:colors]
  end
end

def team_names
  game_hash.map do |team, team_info|
    team_info[:team_name]
  end
end

def player_numbers(input)
  output = []
  game_hash.each do |team, team_info|
    if team_info[:team_name] == input
      team_info.each do |key, value|
        if key == :players
          value.each do |player|
            output.push(player[:number])
          end
        end
      end
    end
  end
  return output
end

def player_stats(input)
  game_hash.each do |team, team_info|
    team_info.each do |key, value|
      if key == :players 
        value.each do |player|
          if input == player[:player_name]
            player.delete(:player_name)
            return player
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  big_shoe = 0 
  rebounds = 0 
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:shoe] > big_shoe
        big_shoe = player[:shoe]
        rebounds = player[:rebounds]
      end
    end
  end
  return rebounds
end 

def most_points_scored
  new_hash = {}
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      new_hash[player[:player_name]]
      new_hash[player[:player_name]]= player[:points]
    end
  end
  key = new_hash.max_by { |k, v| v }[0]
  return key
end


def winning_team
  row_index = 0 
  row_index2 = 0
  total =0
  other_total = 0
  while row_index < game_hash.length do
    
     total += game_hash[:away][:players][row_index][:points] 
   row_index  += 1 
  end
    while row_index2 < game_hash.length do
       other_total += game_hash[:home][:players][row_index2][:points]
     row_index2 += 1
    end
   total > other_total ? "#{game_hash[:away][:team_name]}" : "#{game_hash[:home][:team_name]}"
end


def player_with_longest_name
  names_array = []
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      names_array << player[:player_name]
    end
  end
  return names_array.max_by(&:length)
end 

def long_name_steals_a_ton?
  new_hash = {}
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      new_hash[player[:player_name]]
      new_hash[player[:player_name]]= player[:steals]
    end
  end
  key = new_hash.max_by { |k, v| v }[0]
  key == player_with_longest_name ? true : false
end
  
  
  
  #use longest name method written yest and do a whole new steals part.




