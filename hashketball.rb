def game_hash
  
#construct the full structure
home_one = {:player_name=>"Alan Anderson", :number=>0, :shoe=>16, :points=>22, :rebounds=>12, :assists=>12, :steals=>3, :blocks=>1, :slam_dunks=>1}
home_two = {:player_name=>"Reggie Evans", :number=>30, :shoe=>14, :points=>12, :rebounds=>12, :assists=>12, :steals=>12, :blocks=>12, :slam_dunks=>7}
home_three = {:player_name=>"Brook Lopez", :number=>11, :shoe=>17, :points=>17, :rebounds=>19, :assists=>10, :steals=>3, :blocks=>1, :slam_dunks=>15}
home_four = {:player_name=>"Mason Plumlee", :number=>1, :shoe=>19, :points=>26, :rebounds=>11, :assists=>6, :steals=>3, :blocks=>8, :slam_dunks=>5}
home_five = {:player_name=>"Jason Terry", :number=>31, :shoe=>15, :points=>19, :rebounds=>2, :assists=>2, :steals=>4, :blocks=>11, :slam_dunks=>1}
away_one = {:player_name=>"Jeff Adrien", :number=>4, :shoe=>18, :points=>10, :rebounds=>1, :assists=>1, :steals=>2, :blocks=>7, :slam_dunks=>2}
away_two = {:player_name=>"Bismack Biyombo", :number=>0, :shoe=>16, :points=>12, :rebounds=>4, :assists=>7, :steals=>22, :blocks=>15, :slam_dunks=>10}
away_three = {:player_name=>"DeSagna Diop", :number=>2, :shoe=>14, :points=>24, :rebounds=>12, :assists=>12, :steals=>4, :blocks=>5, :slam_dunks=>5}
away_four = {:player_name=>"Ben Gordon", :number=>8, :shoe=>15, :points=>33, :rebounds=>3, :assists=>2, :steals=>1, :blocks=>1, :slam_dunks=>0}
away_five = {:player_name=>"Kemba Walker", :number=>33, :shoe=>15, :points=>6, :rebounds=>12, :assists=>12, :steals=>7, :blocks=>5, :slam_dunks=>12}

game_hash={}
game_hash[:home] = {}
game_hash[:away] = {}
game_hash[:home][:team_name] = ""
game_hash[:away][:team_name] = ""
game_hash[:home][:colors] = []
game_hash[:away][:colors] = []
game_hash[:home][:players] = []
game_hash[:away][:players] = []

#enter data "manually"
game_hash[:home][:team_name] = "Brooklyn Nets"
game_hash[:home][:colors] = ["Black", "White"]
game_hash[:away][:team_name] = "Charlotte Hornets"
game_hash[:away][:colors] = ["Turquoise", "Purple"]
game_hash[:home][:players].push(home_one)
game_hash[:home][:players].push(home_two)
game_hash[:home][:players].push(home_three)
game_hash[:home][:players].push(home_four)
game_hash[:home][:players].push(home_five)
game_hash[:away][:players].push(away_one) 
game_hash[:away][:players].push(away_two)
game_hash[:away][:players].push(away_three)
game_hash[:away][:players].push(away_four)
game_hash[:away][:players].push(away_five)

#p game_hash[:home][:players][0][:slam_dunks]
#p game_hash[:away][:players][4][:number]

game_hash
end

def BasriWhatIsHisScore(passed_hash,passed_symbol,passed_string)
 passed_hash[passed_symbol][:players].each do |data|
    if data[:player_name] == passed_string
        return data[:points]
      end
    end
    nil
end

def num_points_scored(name)
  #Basic check
  please_enter_a_name = "Please enter a player name to look for!"
  if name == nil
    return p please_enter_a_name
  end
  # The core code with a helper function of my own!
  the_hash=game_hash
  if BasriWhatIsHisScore(the_hash,:home,name)
    return  BasriWhatIsHisScore(the_hash,:home,name)
  end
  if BasriWhatIsHisScore(the_hash,:away,name)
    return  BasriWhatIsHisScore(the_hash,:away,name)
  end
the_player_does_not_exist = "The player you asked for is in none of the teams!"
return the_player_does_not_exist
end

def BasriWhatIsHisShoeSize(passed_hash,passed_symbol,passed_string)
 passed_hash[passed_symbol][:players].each do |data|
    if data[:player_name] == passed_string
        return data[:shoe]
      end
    end
    nil
end

def shoe_size(name)
  #Basic check
  please_enter_a_name = "Please enter a player name to look for!"
  if name == nil
    return p please_enter_a_name
  end
  # The core code with a helper function of my own!
  the_hash=game_hash
  if BasriWhatIsHisShoeSize(the_hash,:home,name)
    return  BasriWhatIsHisShoeSize(the_hash,:home,name)
  end
  if BasriWhatIsHisShoeSize(the_hash,:away,name)
    return  BasriWhatIsHisShoeSize(the_hash,:away,name)
  end
the_player_does_not_exist = "The player you asked for is in none of the teams!"
return the_player_does_not_exist
end

def team_colors(team)
  #Basic check
  please_enter_a_name = "Please enter a team name to look for!"
  if team == nil
    return p please_enter_a_name
  end
  # The core code
  the_hash=game_hash
  if the_hash[:home][:team_name] == team
    return  the_hash[:home][:colors]
  end
  if the_hash[:away][:team_name] == team
    return  the_hash[:away][:colors]
  end
the_team_does_not_exist = "The team you asked for is in none of the teams!"
return the_team_does_not_exist
end

def team_names
  the_hash=game_hash
  team_names_array =[]
  team_names_array.push(the_hash[:home][:team_name])
  team_names_array.push(the_hash[:away][:team_name])
  team_names_array
end

#def CollectJerseyNumbers(passed_hash)
#  array=[]
#  passed_hash[:number]each do |data|
#    array << data
#  end
#  nil
#end

def player_numbers(team)
  #Basic check
  please_enter_a_name = "Please enter a team name to look for!"
  if team == nil
    return p please_enter_a_name
  end
  # The core code
  the_hash=game_hash
  jersey_numbers_array=[]
  if the_hash[:home][:team_name] == team
    temp_hash = the_hash[:home][:players]
    jersey_numbers_array.push(temp_hash.map {|item| item[:number]})
    return jersey_numbers_array[0].sort
  end
  if the_hash[:away][:team_name] == team
    temp_hash = the_hash[:away][:players]
    jersey_numbers_array << temp_hash.map {|item| item[:number]}
    return jersey_numbers_array[0].sort
  end

the_team_does_not_exist = "The team you asked for is in none of the teams!"
return p the_team_does_not_exist
end

def BasriPlayerStats(passed_hash,passed_symbol,passed_string)
 passed_hash[passed_symbol][:players].each do |data|
    if data[:player_name] == passed_string
        a = {:number=>data[:number], :shoe=>data[:shoe], :points=>data[:points], :rebounds=>data[:rebounds], 
        :assists=>data[:assists], :steals=>data[:steals], :blocks=>data[:blocks], :slam_dunks=>data[:slam_dunks]}
        return a 
      end
    end
    nil
end

def player_stats(name)
   #Basic check
  please_enter_a_name = "Please enter a name to look for!"
  if name == nil
    return p please_enter_a_name
  end
  the_hash=game_hash
  if BasriPlayerStats(the_hash,:home,name)
    return  BasriPlayerStats(the_hash,:home,name)
  end
  if BasriPlayerStats(the_hash,:away,name)
    return  BasriPlayerStats(the_hash,:away,name)
  end
end

def BasriGiveMeThePlayerDetailsForLargest(home_or_away,the_hash,largest_something)
  largest = 0
  largest_hash = nil
  the_hash[home_or_away][:players].each do |item|
    if item[largest_something] > largest
      largest = item[largest_something]
      largest_hash = item
    end  
  end
  largest_hash
end

def BasriGiveMeTheTotalScores(home_or_away,the_hash)
  total_score = 0
  the_hash[home_or_away][:players].each do |item|
    total_score += item[:points]
    end  
  total_score
end

def big_shoe_rebounds
  the_hash=game_hash
  home_largest_shoe_size = BasriGiveMeThePlayerDetailsForLargest(:home,the_hash,:shoe)
  away_largest_shoe_size = BasriGiveMeThePlayerDetailsForLargest(:away,the_hash,:shoe)
  if home_largest_shoe_size[:shoe] > away_largest_shoe_size[:shoe]
    return home_largest_shoe_size[:rebounds]
  else
    return away_largest_shoe_size[:rebounds]
  end
  return p "Oh we have 2 with the equal shoe size!"
end

def winning_team
  the_hash=game_hash
  home_points_scored = BasriGiveMeTheTotalScores(:home,the_hash)
  p home_points_scored
  away_points_scored = BasriGiveMeTheTotalScores(:away,the_hash)
  p away_points_scored
  if home_points_scored > away_points_scored
    return the_hash[:home][:team_name]
  else
    return the_hash[:away][:team_name]
  end
  return p "Oh the game was a draw!"
end

def BasriGiveMeThePlayerDetailsForLongestName(home_or_away,the_hash,largest_something)
  largest = 0
  largest_hash = nil
  the_hash[home_or_away][:players].each do |item|
    if item[largest_something].length > largest
      largest = item[largest_something].length
      largest_hash = item
    end  
  end
  largest_hash
end
  
def player_with_longest_name
  the_hash=game_hash
  home_player_with_longest_name = BasriGiveMeThePlayerDetailsForLongestName(:home,the_hash,:player_name)
  away_player_with_longest_name = BasriGiveMeThePlayerDetailsForLongestName(:away,the_hash,:player_name)
  if home_player_with_longest_name[:player_name].length > away_player_with_longest_name[:player_name].length
    return home_player_with_longest_name[:player_name]
  else
    return away_player_with_longest_name[:player_name]
  end
  return p "Oh we have 2 with the equal name length!"
end
  
def long_name_steals_a_ton?
  the_hash=game_hash
  home_most_steals = BasriGiveMeThePlayerDetailsForLargest(:home,the_hash,:steals)
  away_most_steals = BasriGiveMeThePlayerDetailsForLargest(:away,the_hash,:steals)
  if home_most_steals[:steals] > away_most_steals[:steals]
    most_steals_winner = home_most_steals[:player_name]
  else
    most_steals_winner = away_most_steals[:player_name]
  end
  player_with_longest_name == most_steals_winner
end
 
def most_points_scored
  the_hash = game_hash
  home_most_points_by = BasriGiveMeThePlayerDetailsForLargest(:home,the_hash,:points)
  away_most_points_by = BasriGiveMeThePlayerDetailsForLargest(:away,the_hash,:points)
  if home_most_points_by[:points] >  away_most_points_by[:points]
    return home_most_points_by[:player_name]
  else
    return away_most_points_by[:player_name]
  end
  return "they are equal!"
end
  
#===main
#p num_points_scored("Jason Terry")
#p num_points_scored("Kemba Walker")
#p num_points_scored("Basri")
#p team_colors("Brooklyn Nets")
#p team_colors("Charlotte Hornets")
#p team_names
#p player_numbers("Brooklyn Nets")
#p player_numbers("Charlotte Hornets")
#p player_stats("Alan Anderson")
#p big_shoe_rebounds
p winning_team
#p player_with_longest_name
#p long_name_steals_a_ton?
#p most_points_scored

