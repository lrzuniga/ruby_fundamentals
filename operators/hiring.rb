=begin
	
candidate.years_of_experience = 4
  candidate.github_points = 293
  candidate.languages_worked_with = ['C', 'Ruby', 'Python', 'Clojure']
  candidate.applied_recently? = false
  candidate.age = 26

criteria:
Our ideal candidate has 2 or more years of experience
500 Github points or more
not younger than 15
not candidates who applied recently
	
=end

  is_an_experienced_ruby_programmer = (candidate.languages_worked_with.include? "Ruby") && (candidate.years_of_experience >= 2 || candidate.github_points >= 500) && !(candidate.age < 15 || candidate.applied_recently?)

  #not 100% clear on the '?' after candidate.applied_recently? I'm assuming since it is declared as 'false', a !(candidate.applied_recently?) generates a !(false) which filters out that recently applied candidates