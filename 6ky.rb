def scramble(s1,s2)
  #your code here
  
  if s2.size > s1.size
  	return false
  end
  count = 0
  s1_a = s1.split("")
  s2.split("").each do |s2|
  if s1.count(s2) == 0 
  	return false
  end
  if s1.count(s2) >= 1
  	count = count + 1
  end
  	
  end
  if count >= s2.size
  	return true
  end

  
  puts count
end

s1 = "codewarscodewars"
s2 = "codeee"
puts scramble(s1,s2)