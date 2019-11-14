def game_hash()
    game_hash = { ":home" => {":team_name" => "Brooklyn Nets", ":colors" => ["Black", "White"], ":players" => [{ ":player_name" =>"Alan  Anderson", ":number" => 0, ":shoe" => 16, ":points" => 22, ":rebounds" => 12, ":assists" => 12 , ":steals" => 3, ":blocks" => 1, ":slam_dunks" => 1 }, { ":player_name" =>"Reggie Evans", ":number" => 30, ":shoe" => 14, ":points" => 12, ":rebounds" => 12, ":assists" => 12 , ":steals" => 12, ":blocks" => 12, ":slam_dunks" => 7 }, { ":player_name" =>"Brook Lopez", ":number" => 11, ":shoe" => 17, ":points" => 17, ":rebounds" => 19, ":assists" => 10 , ":steals" => 3, ":blocks" => 1, ":slam_dunks" => 15 }, { ":player_name" =>"Mason Plumlee", ":number" => 1, ":shoe" => 19, ":points" => 26, ":rebounds" => 11, ":assists" => 6 , ":steals" => 3, ":blocks" => 8, ":slam_dunks" => 5 }, { ":player_name" =>"Jason Terry", ":number" => 31, ":shoe" => 15, ":points" => 19, ":rebounds" => 2, ":assists" => 2 , ":steals" => 4, ":blocks" => 11, ":slam_dunks" => 1 }] }, ":away" => {":team_name" => "Charlotte Hornets", ":colors" => ["Turquoise", "Purple"], ":players" => [{ ":player_name" =>"Jeff Adrien", ":number" => 4, ":shoe" => 18, ":points" => 10, ":rebounds" => 1, ":assists" => 1 , ":steals" => 2, ":blocks" => 7, ":slam_dunks" => 2 }, { ":player_name" =>" Bismack Biyombo", ":number" => 0, ":shoe" => 16, ":points" => 12, ":rebounds" => 4, ":assists" => 7 , ":steals" => 22, ":blocks" => 15, ":slam_dunks" => 10 }, { ":player_name" =>"DeSagna Diop", ":number" => 2, ":shoe" => 14, ":points" => 24, ":rebounds" => 12, ":assists" => 12 , ":steals" => 4, ":blocks" => 5, ":slam_dunks" => 5 }, { ":player_name" =>"Ben Gordon", ":number" => 8, ":shoe" => 15, ":points" => 33, ":rebounds" => 3, ":assists" => 2 , ":steals" => 1, ":blocks" => 1, ":slam_dunks" => 0 }, { ":player_name" =>"Kemba Walker", ":number" => 33, ":shoe" => 15, ":points" => 6, ":rebounds" => 12, ":assists" => 12 , ":steals" => 7, ":blocks" => 5, ":slam_dunks" => 12 } ] }   }

   return game_hash
    
end

def num_points_scored(player_name)
   game_hash.each do |attribute, values|

    result = values.values

    x = result[2].to_a

    x.each do |a|
        
        names = a[":player_name"]
        points = a[":points"]
        hash = [names => points]
        
        hash.each do |z|
            
            return z[player_name]
        end
    end
    
end
            
end



def shoe_size(player_name) # this function accepts inputs as players name and display the player's shoe size 
    game_hash.each do |attribute, values|
     # i looped through the keys and values of the nested hash
     result = values.values
     # i gathered all the values of each keys
     x = result[2].to_a
     # i converted them to  an array of hashes
     x.each do |a|
         # i then loop through each hashes by targetting only the keys i needed which is player_name and points and stored them in two array variables names and points
         names = a[":player_name"]
         points = a[":shoe"]
         hash = [names => points]
         # i then used the two arrays to form an hash
         hash.each do |z|
             # i looped through each hash and display each player's point by using their name
             puts z[player_name]
         end
     end
     
 end
             
 end
 #function that display the team's color when you enter the team's name

 def team_colors(team_name)  
    game_hash.each do |attribute, values|
  
     result = values.values
   
     x = result[0].to_s
     y = result[1].to_s

     hash = [x => y]

     hash.each do |u|
        puts u[team_name]
     end    
 end           
 end

#function that display the team names

def team_names()
    game_hash.each do |attribute, values|
       x = values[":team_name"]
       return x
 end         
 end



  #function that display the team's jersey numbers when you enter the team's name

  def player_numbers(team_name)
    game_hash.each do |attribute, values|
  
        result = values.values

        x = result[2].to_a
       
        x.each do |a|
            
            names = result[0]
            number = a[":number"]
            hash = [names => number]
            
            hash.each do |z|
                
                return "#{z[team_name]}"
            end
        end
        
    end
                   
 end


 #function that display the player's stats when you enter the player's name

 def player_stats(player_name)
    game_hash.each do |attribute, values|

     result = values.values
     
     x = result[2].to_a
    
     x.each do |a|

         names = a[":player_name"]
         stat = a
         hash = [names => stat]
         
         hash.each do |z|

             return z[player_name]
         end
     end
     
 end

 end
 
game_hash