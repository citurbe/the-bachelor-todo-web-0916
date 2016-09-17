def get_first_name_of_season_winner(data, season)
  data.each do |season_name, contestant_array|
  	if season_name == season
  		contestant_array.each do |contestant_hash|
  			if contestant_hash["status"] == "Winner"
  				
  				return contestant_hash["name"].split(" ")[0]
  			end
  		end
  	end
  end

end

def get_contestant_name(data, occupation)
  data.each do |season_name, contestant_array|
  	contestant_array.each do |contestant_hash|
  		return contestant_hash["name"] if contestant_hash["occupation"] == occupation
  	end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season_name, contestant_array|
  	contestant_array.each do |contestant_hash|
  		hometown_counter += 1 if contestant_hash["hometown"] == hometown
  	end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  data.each do |season_name, contestant_array|
  	contestant_array.each do |contestant_hash|
  		return contestant_hash["occupation"] if contestant_hash["hometown"] == hometown
  	end
  end
end

def get_average_age_for_season(data, season)
  contestant_counter = 0
  total_age = 0
  data.each do |season_name, contestant_array|
  	if season_name == season
  	contestant_array.each do |contestant_hash|
  		contestant_counter += 1
  		total_age += contestant_hash["age"].to_f
  	end
  end
end

  average = total_age / contestant_counter
  return average.round
end
