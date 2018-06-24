require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season][0]["name"].split(" ")[0]
  # goes to the right reason and gets the right person because 1st person is winner
  # splits their name into first and last and returns first
end

def get_contestant_name(data, occupation)
	right_person_obj = all_contestants(data).find{|person| person["occupation"] == occupation}

	return right_person_obj["name"]
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
  all_contestants(data).count {|contestant| contestant["hometown"] == hometown}
end

def get_occupation(data, hometown)
	right_person = all_contestants(data).find{|person| person["hometown"] == hometown}
	right_person["occupation"]
  # code here
end

def get_average_age_for_season(data, season)
	correct_season = data[season]
	ages = correct_season.map do |hash| 
		hash["age"]
	end
	get_average(ages)
	
  # code here
end

# returns an array of all the contestants
def all_contestants(data)
	array_of_people = []
	data.each do |season, people|
		array_of_people << people
	end
	array_of_people.flatten
end

def get_average(array)
	sum = 0
	array.each do |num|
		sum += num.to_i
	end
	return (sum.to_f/array.length).round
end