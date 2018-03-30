def get_first_name_of_season_winner(data, season)
  # code here

  data[season].each do |info|
    info.each do |key, value|
      if value == "Winner"
        full_name = info["name"] # => Beth Smalls
          return full_name.split(" ").first
        end
      end
    end
end


def get_contestant_name(data, occupation)
  # code here
  data.each do |season, info|
      info.each do |people|
        people.each do |key, value|
            if value == occupation
              return people["name"]
            end
          end
        end
      end
end

def count_contestants_by_hometown(data, hometown)
  how_many_same_hometown = 0
    data.each do |season, info|
      info.each do |people|
        people.each do |key, value|
          if value == hometown
            how_many_same_hometown += 1
          end
        end
      end
    end
    how_many_same_hometown
  # code here
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, info|
    info.each do |people|
      people.each do |key, value|
        if value == hometown
          return people["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
count = 0
age = 0  # code here
  data[season].each do |info|
      info.each do |key, value|
        if key == "age"
          count += 1
          age += value.to_i
      end
    end
  end
answer = (age/count).to_i
    return answer
end
