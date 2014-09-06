module BensSillyModule
	# Created by Benjamin Rausch!
	$insults = ["How's that GED working out for you?","My cat has more brain cells than you.","The founding fathers would be so proud to know we let people like you vote.","I'm fairly confident Forrest Gump could destroy you in chess.","Is that your face or a Halloween mask?","If you were a religion, you'd be Scientology.","You make chimpanzees look sophisticated.","Fun fact: the average bum receives more hundred dollar bills in his tin cup each day than thoughts you'll ever have in your life.","No matter how powerful we can make vacuums, there will never be one manufactured that sucks as much as you do."]
	def BensSillyModule.meow(num)
		num.times do
			puts "meow"
		end
	end
	def BensSillyModule.insult # Just insults the user using a randomly picked insult from the above array of insults.
		prng = Random.new()
		puts $insults[((prng.rand)*($insults.length)).floor]
	end
	def BensSillyModule.sagan
		prng = Random.new()
		star_stuff = (prng.rand*1000000000).floor # Warning! Generates up to a billion instances of that string! Use with caution. To generate a full 1,000,000,000 instances took 2378.092 seconds, or 39.63 minutes on my beastly PC.
		print "Billions"
		star_stuff.times do
			print " and billions"
		end
		puts " of stars."
	end
	def BensSillyModule.markify(string) # The order of these replacements is crucial to not having repeating h's
		if string.include? "wa"
			string.gsub!(/wa/, "hwa")
		end
		if string.include? "Wa"
			string.gsub!(/Wa/, "Hwa")
		end
		if string.include? "we"
			string.gsub!(/we/, "hwe")
		end
		if string.include? "We"
			string.gsub!(/We/, "Hwe")
		end
		if string.include? "wi"
			string.gsub!(/wi/, "hwi")
		end
		if string.include? "Wi"
			string.gsub!(/Wi/, "Hwi")
		end
		if string.include? "wo"
			string.gsub!(/wo/, "hwo")
		end
		if string.include? "Wo"
			string.gsub!(/Wo/, "Hwo")
		end
		if string.include? "wu"
			string.gsub!(/wu/, "hwu")
		end
		if string.include? "Wu"
			string.gsub!(/Wu/, "Hwu")
		end
		if string.include? "wh"
			string.gsub!(/wh/, "hw")
		end
		if string.include? "Wh"
			string.gsub!(/Wh/, "Hw")
		end
	end
	def BensSillyModule.to_cat(string) # Current version adds an extra space to the end. Working on removing that.
		words = string.split(" ")
		for thang in words do
			lastchar = thang[-1]
			if thang==words[-1]
				if thang.capitalize! ==nil # Prints different states of capitalization and punctuation based on the capitalization and punctuation of the original word.
					print "Meow"
					toprint = case lastchar
						when "." then "."
						when "," then ","
						when ":" then ":"
						when ";" then ";"
						when "!" then "!"
						when "?" then "?"
						else ""
						end
					print toprint
				elsif thang.upcase! == nil
					print "MEOW"
					toprint = case lastchar&&(thang.length!=1) # Necessary beacause single character strings were being returned in all caps
						when "." then "."
						when "," then ","
						when ":" then ":"
						when ";" then ";"
						when "!" then "!"
						when "?" then "?"
						else ""
						end
					print toprint
				else
					print "meow"
					toprint = case lastchar
						when "." then "."
						when "," then ","
						when ":" then ":"
						when ";" then ";"
						when "!" then "!"
						when "?" then "?"
						else ""
						end
					print toprint
				end
			else
				if thang.capitalize! == nil
					print "Meow"
					toprint = case lastchar
						when "." then ". "
						when "," then ", "
						when ":" then ": "
						when ";" then "; "
						when "!" then "! "
						when "?" then "? "
						else " "
						end
					print toprint
				elsif (thang.upcase! == nil)&&(thang.length!=1)
					print "MEOW"
					toprint = case lastchar
						when "." then ". "
						when "," then ", "
						when ":" then ": "
						when ";" then "; "
						when "!" then "! "
						when "?" then "? "
						else " "
						end
					print toprint
				else
					print "meow"
					toprint = case lastchar
						when "." then ". "
						when "," then ", "
						when ":" then ": "
						when ";" then "; "
						when "!" then "! "
						when "?" then "? "
						else " "
						end
					print toprint
				end
			end	
		end			
	end
	def BensSillyModule.generate_horror_title
		characters = ["Jason","Freddy","Alien","Aliens","The Blob","Dracula","Predator","Predators","Satan","Bigfoot","Chuckie","Captain Planet","Michael Myers","Cujo","Ghostface","The Hash-Slinging Slasher","Jaws","Pinhead","Leatherface"]
		locations = ["Manhatten","Long Island","Tokyo","Your Nightmares","Hell","Space","Your Mother's Basement","Los Angeles","New York","Jurassic Park","Sleepaway Camp","Las Vegas"]
		in_series = ["The First","I","1","The Second","II","2","The Third","III","3","The Fourth","IV","4","The Fifth","V","5","The Sixth","VI","6","The Seventh","VII","7","The Eighth","VIII","8","The Ninth","IX","9","The Tenth","X","10","The Final Chapter","The Revenge","The End","The Final Battle","The Horrific Conclusion","XX","XXX","2099","13","XIII","Nightmare Edition","Back for Blood","This Time, it's Personal"]
		prng = Random.new
		char1 = characters[prng.rand(characters.length)]
		char2 = characters[prng.rand(characters.length)]
		char3 = characters[prng.rand(characters.length)]
		location = locations[prng.rand(locations.length)]
		suffix = in_series[prng.rand(in_series.length)]
		formats = ["#{char1} vs. #{char2} in #{location}: #{suffix}","#{char1} and #{char2} Take #{location}","#{char1} takes #{location}","#{char1} vs. #{char2}","#{char1} in #{location}","#{char1} #{suffix}: #{char1} Takes #{location}","#{char1} #{suffix}: #{char1} in #{location}","#{char1} and #{char2} vs. #{char3}","#{char1} vs. #{char2} and #{char3}","#{char1} #{suffix}","#{char1} #{suffix}: The Death of #{char1}","#{char1} #{suffix}: #{char1} Kills #{char2}"]
		formula = formats[prng.rand(formats.length)]
		formula
	end
	def BensSillyModule.jurassic_park
		puts "Jurassic Park, System Security Interface"
		puts "Version 4.0.5, Alpha E"
		puts "Ready..."
		print "> "
		action = gets.chomp
		words = action.split(" ")
		command = (words[0]).downcase
		print "#{command}: PERMISSION DENIED."
		sleep(0.5)
		puts "...and..."
		sleep(0.5)
		100.times do
			sleep(0.05)
			puts "YOU DIDN'T SAY THE MAGIC WORD!"
		end
	end
	def BensSillyModule.to_a_nice_format(string) # I got tired of seeing filenames with varying levels of casing and punctuation, so I made this to remove all that and revert stings to their base form.
		string = string.downcase.chomp
		acceptable_chars = [" ","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0"]
		if string.include? "  "
			string.gsub!(/  /, " ")
		end
		if string.include? "-"
			string.gsub!(/-/, " ")
		end
		if string.include? "_"
			string.gsub!(/_/," ")
		end
		letters = string.split("")
		new_letters = []
		for letter in letters do
			for char in acceptable_chars do
				if letter == char
					new_letters << char
				end
			end
		end
		string = new_letters.join
	end
	def BensSillyModule.return_four # Does exactly what you would expect
		4
	end
	def BensSillyModule.generate_typical_username # Yes, this uses the base code from my horror movie generator, so sue me
		terms = ["My","360","Noscope","n0sc0pe","N05C0P3","420","Blazeit","B1az3it","w33d","Weed","Sm0kin","720","180","quickscope","Quikscope","Quiksc0p3","l33t","1337","pr0","Faz3","0ptic","Optic","Sw@g","Y010","Swag","5W@GGG","Erryday","Glazeit","OpTiC","FaZe","BlAzEiT","WeEd","NoSc0pE","SwAg","YoLo","sw@ggy","slayer","Slayer","Ki11er","Monster","DeStRoYeR","Boi","Crazy","Cray","Crayy","CrAzY","Dope","Epic","1080","666","HASH","HaSh","Hash","DeViL","123","321","Haxor","Hax","HAXX","PrO","Da_B0mb",]
		prng = Random.new
		term1 = terms[prng.rand(terms.length)]
		term2 = terms[prng.rand(terms.length)]
		term3 = terms[prng.rand(terms.length)]
		term4 = terms[prng.rand(terms.length)]
		term5 = terms[prng.rand(terms.length)]
		term6 = terms[prng.rand(terms.length)]
		formats = ["#{term1}_#{term2}","#{term1}_#{term2}[#{term3}]","x#{term1}x#{term2}x#{term3}","x#{term1}x#{term2}x#{term3}[#{term4}]","#{term1}#{term2}#{term3}#{term4}#{term5}#{term6}","xX#{term1}#{term2}#{term3}Xx","#{term1}#{term2}#{term3}#{term4}","#{term1}_#{term2}_#{term3}_#{term4}","xXx#{term1}xXx","xXx#{term1}#{term2}xXx"]
		formula = formats[prng.rand(formats.length)]
		formula
	end
	def BensSillyModule.geek_code # The Geek Code is a cool string of numbers that told info about a user's fandoms and computer skills. Though it was mainly used in the late '90s, it pops up every now and again on forums, so I'm building a CLU to do it justice. This is the one of the only times that the phrase 'C++' isn't in reference to a language. This CLU uses http://www.geekcode.com/geek.html as the source for all its info, and uses Geek Code version 3.12 
		puts "Welcome to the idiot-proof Geek Code 3.12 generator created and maintained by Ben R! Answer the following questions about your geekiness, and you will be given a set of numbers and symbols at the end. That is your Geek Code."
		puts "To begin, what is your vocation/study? (answer with number)"
		puts "1. Business
		2. Classics
		3. Commercial Arts
		4. Computer Management
		5. Computer Science
		6. Communications
		7. Engineering
		8. Education
		9. Fine Arts
		10. Government
		11. Humanities
		12. Information Technology
		13. Jurisprudence (Law)
		14. Library Science
		15. Literature
		16. Mass Communications
		17. Math
		18. Medicine
		19. Music
		20. Performing Arts
		21. Philosophy
		22. Science (Physics, Chemistry, Biology, etc.)
		23. Social Science (Psychology, Sociology, etc.)
		24. Technical Writing
		25. Other
		26. Undecided
		26. No Qualifications
		27. Jack of All Trades"
		num = gets.chomp.to_i
		# Find a way to verify they entered one of the correct integers
	end
	# To do: add method to translate geek code version 3.12 into legible format
	# To do: access a dictionary in Ruby to make an indie band name generator
	# To do: make a method comparing your complete genome to that of Kevin Bacon
end
class Geek
	def initialize(name, age, height_in_meters, weight_in_kilos, birthplace, username, favorite_trek_captain, favorite_doctor, favorite_show, favorite_language, gender="male", living_with_parents = true, job = nil)
		@name = name
		@age = age
		@height_in_meters = height_in_meters
		@weight_in_kilos = weight_in_kilos
		@birthplace = birthplace
		@username = username
		@favorite_trek_captain = favorite_trek_captain
		@favorite_doctor = favorite_doctor
		@favorite_show = favorite_show
		@gender = gender
		@living_with_parents = living_with_parents
		@job = job
	end
	def name
		@name
	end
	def set_name(name)
		@name = name
	end
	def age
		@age
	end
	def set_age(age)
		@age = age
	end
	def height_in_meters
		@height_in_meters
	end
	def set_height(height)
		@height_in_meters = height
	end
	def weight_in_kilos
		@weight_in_kilos
	end
	def set_weight(weight)
		@weight_in_kilos = weight
	end
	def username
		@username
	end
	def set_username(un)
		@username = un
	end
	def favorite_trek_captain
		@favorite_trek_captain
	end
	def set_favorite_captain(cap)
		@favorite_trek_captain = cap
	end
	def favorite_doctor
		@favorite_doctor
	end
	def set_fav_doctor(doc)
		@favorite_doctor = doc
	end
	def favorite_show
		@favorite_show
	end
	def set_favorite_show(show)
		@favorite_show = show
	end
	def favorite_language
		@favorite_language
	end
	def set_favorite_language(lang)
		@favorite_language = lang
	end
	def living_status
		@living_with_parents
	end
	def set_living_status(bool)
		@living_with_parents = bool
	end
	def job
		@job
	end
	def set_job(job)
		@job = job
	end
end