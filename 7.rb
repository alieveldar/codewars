def format_duration(seconds)
	time = Time.at(seconds)
	sec = time.sec
	hours = time.hour - 3
	minuts = time.min
	days = time.day - 1
	years = time.year - 1970

	#puts sec  
	#puts minuts
	#puts hours
	#puts days
	#puts years
	w_year = " "
	w_day = " "
	w_hour = " "
	w_min = " "
	w_sec = " "
	mass_times = [years, days, hours, minuts, sec]
	words_arr = []
	
 for i in 0..4
	if i == 0
		if mass_times[i] == 0
			w_year = ""
		elsif mass_times[i] == 1
			w_year = "#{mass_times[i]} year"
		elsif mass_times[i] > 1
			w_year = "#{mass_times[i]} years"
		end
	end
	if i == 1
		if mass_times[i] == 0
			w_day = ""
		elsif mass_times[i] == 1
			w_day = "#{mass_times[i]} day"
		elsif mass_times[i] > 1
			w_day = "#{mass_times[i]} days"
		end
	end
	if i == 2
		if mass_times[i] == 0
			w_hour = " "
		elsif mass_times[i] == 1
			w_hour = "#{mass_times[i]} hour"
		elsif mass_times > 1
			w_hour = "#{mass_times[i]} hours"
		end
	end
	if i == 3
		if mass_times[i] == 0
			w_min = " "
		elsif mass_times[i] == 1
			w_min = "minute"
		elsif mass_times[i] > 1
			w_min = "minutes"
		end
	end
	if i == 4
		if mass_times[i] == 0
			w_sec = " "
		elsif mass_times[i] == 1
			w_sec = "secund"
		elsif mass_times[i] > 1
			w_sec = "seconds"
		end
	end

    
	end
  











print mass_times

end
seconds = 120
format_duration(seconds)