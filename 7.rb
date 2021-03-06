def format_duration(seconds)
  time = Time.at(seconds)
  sec = time.sec
  hours = time.hour - 3
  minuts = time.min
  days = time.day - 1
  years = time.year - 1970
  w_year = ""
  w_day  = ""
  w_hour = ""
  w_min  = ""
  w_sec  = ""
  mass_times = [years, days, hours, minuts, sec]
  words_arr = []
  phrase = []
  if seconds == 0
  return "now"
  end
  for i in 0..4
   if i == 0
    if mass_times[i] == 0
     w_year = "empty"
   elsif mass_times[i] == 1
     w_year = "#{mass_times[i]} year"
   elsif mass_times[i] > 1
     w_year = "#{mass_times[i]} years"
   end
   words_arr << w_year
 end
 if i == 1
  if mass_times[i] == 0
   w_day = "empty"
 elsif mass_times[i] == 1
   w_day = "#{mass_times[i]} day"
 elsif mass_times[i] > 1
   w_day = "#{mass_times[i]} days"
 end
 words_arr << w_day
end
if i == 2
  if mass_times[i] == 0
   w_hour = "empty"
 elsif mass_times[i] == 1
   w_hour = "#{mass_times[i]} hour"
 elsif mass_times[i] > 1
   w_hour = "#{mass_times[i]} hours"
 end
 words_arr << w_hour
end
if i == 3
  if mass_times[i] == 0
   w_min = "empty"
 elsif mass_times[i] == 1
   w_min = "#{mass_times[i]} minute"
 elsif mass_times[i] > 1
   w_min = "#{mass_times[i]} minutes"
 end
 words_arr << w_min
end
if i == 4
  if mass_times[i] == 0
   w_sec = "empty"
 elsif mass_times[i] == 1
   w_sec = "#{mass_times[i]} second"
 elsif mass_times[i] > 1
   w_sec = "#{mass_times[i]} seconds"
 end
 words_arr << w_sec
 words_arr.delete_if { |w| w == "empty" }
end
end
curl = words_arr.count - 1
for i in 0..curl
  if i != curl && i != curl - 1
    phrase << words_arr[i] 
    phrase << ", "
  elsif i == curl - 1
    phrase << words_arr[i]
    phrase << " and "
  elsif i == curl
    phrase << words_arr[i]
  end
end
return phrase.join
end