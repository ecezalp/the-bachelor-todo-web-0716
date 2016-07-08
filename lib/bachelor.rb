require 'pry'

def get_first_name_of_season_winner(data, season)
  winner_string = ""
  data[season].each do |k1, v1|
        if k1["status"] == "Winner"
          winner_string << k1["name"]
        end
      end
 winner_string.split(" ").first
end

def get_contestant_name(data, occupation)
  occupied_person = ""
  data.each do |k1, v1|
    v1.each_with_index do |x, i|
        if x["occupation"] == occupation
          occupied_person << x["name"]
        end
      end
    end
 occupied_person
end

def count_contestants_by_hometown(data, hometown)
total_number = 0
data.each do |k1, v1|
  v1.each_with_index do |x, i|
      if x["hometown"] == hometown
        total_number += 1
      end
    end
  end
total_number
end

def get_occupation(data, hometown)
first_occupation = ""
  data.each do |k1, v1|
    v1.each_with_index do |x, i|
        if x["hometown"] == hometown
          first_occupation = x["occupation"]
          break
        end
      end
    end
  first_occupation
end

def get_average_age_for_season(data, season)
  cumulative_age = 0
  contestant_count = 0
    data[season].each_with_index do |k1, i|
      cumulative_age += k1["age"].to_f
      contestant_count += 1
         end
  (cumulative_age / contestant_count).round
end
