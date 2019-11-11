# Write your code here!
require 'pry'


def game_hash
  game = {:home =>{:team_name =>"Brooklyn Nets",
                   :colors => ["Black", "White"],
                   :players => [
                    {:player_name => "Alan Anderson",
                     :number => "0",
                     :shoe => "16",
                     :points => "22",
                     :rebounds => "12",
                     :assists => "12",
                     :steals => "3",
                     :blocks => "1",
                     :slam_dunks => "1"
                   },
                    {:player_name => "Reggie Evans",
                     :number => "30",
                     :shoe => "14",
                     :points => "12",
                     :rebounds => "12",
                     :assists => "12",
                     :steals => "12",
                     :blocks => "12",
                     :slam_dunks => "7"
                   },
                    {:player_name => "Brook Lopez",
                     :number => "11",
                     :shoe => "17",
                     :points => "17",
                     :rebounds => "19",
                     :assists => "10",
                     :steals => "3",
                     :blocks => "1",
                     :slam_dunks => "15"
                   },
                    {:player_name => "Mason Plumlee",
                     :number => "1",
                     :shoe => "19",
                     :points => "26",
                     :rebounds => "11",
                     :assists => "6",
                     :steals => "3",
                     :blocks => "8",
                     :slam_dunks => "5"
                   },
                    {:player_name => "Jason Terry",
                     :number => "31",
                     :shoe => "15",
                     :points => "19",
                     :rebounds => "2",
                     :assists => "2",
                     :steals => "4",
                     :blocks => "11",
                     :slam_dunks => "1"
                     }]
                   },
          :away =>{:team_name =>"Charlotte Hornets",
                   :colors => ["Turquoise", "Purple"],
                   :players => [
                    {:player_name => "Jeff Adrien",
                     :number => "4",
                     :shoe => "18",
                     :points => "10",
                     :rebounds => "1",
                     :assists => "1",
                     :steals => "2",
                     :blocks => "7",
                     :slam_dunks => "2"
                   },
                    {:player_name => "Bismack Biyombo",
                     :number => "0",
                     :shoe => "16",
                     :points => "12",
                     :rebounds => "4",
                     :assists => "7",
                     :steals => "22",
                     :blocks => "15",
                     :slam_dunks => "10"
                   },
                    {:player_name => "DeSagna Diop",
                     :number => "2",
                     :shoe => "14",
                     :points => "24",
                     :rebounds => "12",
                     :assists => "12",
                     :steals => "4",
                     :blocks => "5",
                     :slam_dunks => "5"
                   },
                    {:player_name => "Ben Gordon",
                     :number => "8",
                     :shoe => "15",
                     :points => "33",
                     :rebounds => "3",
                     :assists => "2",
                     :steals => "1",
                     :blocks => "1",
                     :slam_dunks => "0"
                   },
                    {:player_name => "Kemba Walker",
                     :number => "33",
                     :shoe => "15",
                     :points => "6",
                     :rebounds => "12",
                     :assists => "12",
                     :steals => "7",
                     :blocks => "5",
                     :slam_dunks => "12"
                     }]
                    }}

  game
end

def num_points_scored (player_name)

#train of thought
# for each game, check each team for each player with player name "jeff adrien" or any player_name entered
# if the search matches the player_name entered that players points is returned.

points_scored = ""

    game_hash.each do |team, team_data|
        team_data.each do |key, value|
            if key == :players
                value.each do |player|
                    if player[:player_name] == player_name
                        points_scored = player[:points].to_i
                        return points_scored
                        #binding.pry
                    end
                end
            end
        end
    end

end

def shoe_size (player_name)

  #train of thought
  # for each game, check each team for each player with player name "player_name" entered
  # if the search matches the player_name entered that players shoe size is returned.


  size = ""

  game_hash.each do |team, team_data|
      team_data.each do |key, value|
          if key == :players
              value.each do |player|
                  if player[:player_name] == player_name
                      size = player[:shoe].to_i
                      return size
                      #binding.pry
                  end
              end
          end
      end
  end

end

def team_colors (team_name)

  #train of thought
  # for each game, search through the data of the team name entered
  # if the search matches the team_name entered that teams colors is returned.

  colors = []

  game_hash.each do |team, team_data|
        if team_data[:team_name] == team_name
            colors = team_data[:colors]
            return colors
        end

      #  binding.pry
  end

end

def team_names

    array_of_teams = []

    game_hash.each do |team, team_data|
      array_of_teams.push(team_data[:team_name])
    end
    return array_of_teams
end

def player_numbers(team_name)

  #train of thought
  # for each game, search through the data of the team name entered
  # if the search matches the team_name entered then for each player in that team put their numbers into an array

  numbers = []

  game_hash.each do |team, team_data|
      if team_data[:team_name] == team_name
          team_data.each do |key, value|
              if key == :players
                  value.each do |player|

                      numbers.push(player[:number].to_i)

                #binding.pry

                  end
              end
          end
      end
  end

return numbers
end

def player_stats(player_name)

  stats = {}

      game_hash.each do |team, team_data|
          team_data.each do |key, value|
              if key == :players
                  value.each do |player|
                      if player[:player_name] == player_name
                        player.each do |k,v|

                          stats[k]=(v).to_i


                          #binding.pry
                        end

                        stats.delete_if do |k,v|
                        k  == :player_name
                        end

                      end
                  end
              end
          end
      end
      stats
end

def big_shoe_rebounds

  #train of thought
  # for each game, search through ALL data to find the player with the biggest shoe size
  # when the biggest shoe size is found (no need to return the players name), their number of rebounds will be returned

size = []
biggest_size = ""
rebounds = ""

  game_hash.each do |team, team_data|
      team_data.each do |key, value|
          if key == :players
              value.each do |player|
                      size.push(player[:shoe].to_i)
                      #binding.pry
              end

              size = size.sort
              biggest_size = size[size.length-1]

              value.each do |player|
                if player[:shoe].to_i == biggest_size
                  rebounds = player[:rebounds].to_i
                  return rebounds
                  #binding.pry
                end
              end

          end
      end
  end
end


def most_points_scored

  #same concept as last method

  points = []
  most_points = ""
  player_name = ""

    game_hash.each do |team, team_data|
        team_data.each do |key, value|
            if key == :players

                value.each do |player|
                    points.push(player[:points].to_i)
                end

                points = points.sort
                most_points = points[points.length-1]


                value.each do |player|
                  if player[:points].to_i == most_points
                      player_name= player[:player_name]
                      #binding.pry

                  end
                end

            end
        end
    end
player_name
end

def winning_team


  #train of thought
  # for each game, for each team search through each player data to find the sum of points scored per team
  # when the highest total score is found return the correlating team name

  points = 0
  total_points = [] #first entry is for home team, second entry is for away team
  most_points = ""
  team_name = ""

    game_hash.each do |team, team_data|
        team_data.each do |key, value|
            if key == :players

                value.each do |player|
                    points = points + player[:points].to_i
                end

                total_points.push(points)
                points = 0

            end

        end

    end

    if total_points[0] > total_points[1]
      team_name = "Brooklyn Nets"
      return team_name

    else
      team_name = "Charlotte Hornets"
      return team_name

      #binding.pry
   end


end

def player_with_longest_name

  #train of thought
  # for each game, for each team, for each player search for their player name
  # count the amount of characters (excluding space) in each each name
  # return the name of the player with the most characters


  player_names = []
  longest_name = ""


    game_hash.each do |team, team_data|
        team_data.each do |key, value|
            if key == :players

                value.each do |player|
                    player_names.push(player[:player_name])
                end

                player_names = player_names.sort_by{ |name| name.length}
                longest_name = player_names[player_names.length-1]

            end
        end
    end
longest_name

end

def long_name_steals_a_ton?


game_hash.each do |team, team_data|
    team_data.each do |key, value|
        if key == :players
            value.each do |player|
                if player[:player_name] == player_with_longest_name

                  if player[:steals].to_i > 15
                    return true
                  end
                    #binding.pry


                end
            end
        end
    end
end



end
