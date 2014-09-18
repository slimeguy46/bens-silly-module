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
		puts "	1. Business
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
	27. No Qualifications
	28. Jack of All Trades"
		num = gets.chomp.to_i
		# Find a way to verify they entered one of the correct integers, then go back and have them do it again if they did not
		first = case num
		when 1 then "B"
		when 2 then "C"
		when 3 then "CA"
		when 4 then "CM"
		when 5 then "CS"
		when 6 then "CC"
		when 7 then "E"
		when 8 then "ED"
		when 9 then "FA"
		when 10 then "G"
		when 11 then "H"
		when 12 then "IT"
		when 13 then "J"
		when 14 then "LS"
		when 15 then "L"
		when 16 then "MC"
		when 17 then "M"
		when 18 then "MD"
		when 19 then "MU"
		when 20 then "PA"
		when 21 then "P"
		when 22 then "S"
		when 23 then "SS"
		when 24 then "TW"
		when 25 then "O"
		when 26 then "U"
		when 27 then "!"
		when 28 then "AT"
		end
		first = "G"+first
		puts "Do you have a second major? y/n"
		ans = gets.chomp.downcase
		if ans == "y"
			puts "What is the number of your second vocation?"
			num = gets.chomp.to_i
			extra = case num
			when 1 then "B"
			when 2 then "C"
			when 3 then "CA"
			when 4 then "CM"
			when 5 then "CS"
			when 6 then "CC"
			when 7 then "E"
			when 8 then "ED"
			when 9 then "FA"
			when 10 then "G"
			when 11 then "H"
			when 12 then "IT"
			when 13 then "J"
			when 14 then "LS"
			when 15 then "L"
			when 16 then "MC"
			when 17 then "M"
			when 18 then "MD"
			when 19 then "MU"
			when 20 then "PA"
			when 21 then "P"
			when 22 then "S"
			when 23 then "SS"
			when 24 then "TW"
			when 25 then "O"
			when 26 then "U"
			when 27 then "!"
			when 28 then "AT"
			end
			first = first + "/G" + extra
			# This is the only spot where I separated the first letter from the case unnecessarily, I didn't do it later but I don't feel a need to change it to fit in
		end
		puts "Great. Next, how do you dress?"
		puts "	1. I tend to wear conservative dress such as a business suit or worse, a tie.
	2. Good leisure-wear. Slacks, button-shirt, etc. No jeans, tennis shoes, or t-shirts.
	3. I dress a lot like those found in catalog ads. Bland, boring, without life or meaning.
	4. I'm usually in jeans and a t-shirt.
	5. My t-shirts go a step further and have a trendy political message on them.
	6. Punk dresser, including, but not limited to, torn jeans and shirts, body piercings, and prominent tattoos.
	7. Cross Dresser
	8. I have no idea what I am wearing right now, let alone what I wore yesterday.
	9. No clothing. Quite a fashion statement, don't you think?
	10. I wear the same clothes all the time, no matter the occasion, forgetting to do laundry between wearings."
		num = gets.chomp.to_i
		second = case num
		when 1 then "d++"
		when 2 then "d+"
		when 3 then "d"
		when 4 then "d-"
		when 5 then "d--"
		when 6 then "d---"
		when 7 then "dx"
		when 8 then "d?"
		when 9 then "!d"
		when 10 then "dpu"
		end
		puts "How tall are you?"
		puts "	1. I usually have to duck through doors.
	2. I'm a basketball candidate.
	3. I'm a little taller than most.
	4. I'm an average geek.
	5. I look up to most people.
	6. I look up to damn near everybody.
	7. I take a phone book with me when I go out so I can see to eat dinner."
		num = gets.chomp.to_i
		third_uno = case num
		when 1 then "+++"
		when 2 then "++"
		when 3 then "+"
		when 4 then ""
		when 5 then "-"
		when 6 then "--"
		when 7 then "---"
		end
		puts "Now, how large are you?"
		puts "	1. I take up three movie seats.
	2. I'm a linebacker candidate.
	3. I'm a little rounder than most
	4. I'm an average geek.
	5. Everyone tells me to gain a few pounds.
	6. I tend to have to fight against a strong breeze.
	7. My bones are pooking through my skin."
		num = gets.chomp.to_i
		third_dos = case num
		when 1 then "+++"
		when 2 then "++"
		when 3 then "+"
		when 4 then ""
		when 5 then "-"
		when 6 then "--"
		when 7 then "---"
		end
		third = "s"+ third_uno + ":" + third_dos
		puts "Next is your age. Do you wish to give exact age (1), or age range (2)?"
		num = gets.chomp.to_i
		if num == 1
			puts "Alright, what's your age? (enter a number)"
			age = gets.chomp
			fourth = "a"+age
		else
		puts "Alright, enter the number of your age range"
		puts "	1. 60+
	2. 50-59
	3. 40-49
	4. 30-39
	5. 25-29
	6. 20-24
	7. 15-19
	8. 10-14
	9. 9 and under (Geek in training?)
	10. Immortal
	11. It's none of your business how old I am"
		age_range = gets.chomp.to_i
		fourth = case num
		when 1 then "a+++"
		when 2 then "a++"
		when 3 then "a+"
		when 4 then "a"
		when 5 then "a-"
		when 6 then "a--"
		when 7 then "a---"
		when 8 then "a----"
		when 0 then "a-----"
		when 10 then "a?"
		when 11 then "!a"
		end
	end
		puts "How are you with computers?"
		puts "	1. I'll be first in line to get the new cybernetic interface installed into my skull.
	2. You mean there is life outside of Internet? You're shittin' me! I haven't dragged myself to class in weeks.
	3. Computers are a large part of my existence. When I get up in the morning, the first thing I do is log myself in. I play games or mud on weekends, but still manage to stay off of academic probation.
	4. Computers are fun and I enjoy using them. I play a mean game of DOOM! and can use a word processor without resorting to the manual too often. I know that a 3.5\" disk is not a hard disk. I also know that when it says 'press any key to continue', I don't have to look for a key labeled 'ANY'.
	5. Computers are a tool, nothing more. I use it when it serves my purpose.
	6. Anything more complicated than my calculator and I'm screwed.
	7. Where's the on switch?
	8. If you even mention computers, I will rip your head off!"
		num = gets.chomp.to_i
		fifth = case num
		when 1 then "C++++"
		when 2 then "C+++"
		when 3 then "C++"
		when 4 then "C+"
		when 5 then "C"
		when 6 then "C-"
		when 7 then "C--"
		when 8 then "C---"
		end
		puts "Now tell us, what Unx-based operating system do you use?"
		puts "	1. BSD
	2. Linux
	3. Ultrix
	4. AIX
	5. SysV
	6. HPUX
	7. IRIX
	8. OSF/1
	9. Sun OS/Solaris
	10. SCO Unix
	11. NeXT
	12. Some other one not listed"
		num = gets.chomp.to_i
		sys = case num
		when 1 then "B"
		when 2 then "L"
		when 3 then "U"
		when 4 then "A"
		when 5 then "V"
		when 6 then "H"
		when 7 then "I"
		when 8 then "O"
		when 9 then "S"
		when 10 then "C"
		when 11 then "X"
		when 12 then "*"
		end
		puts "Now, how good are you at using Unix?"
		puts "	1. I am the sysadmin. If you try and crack my machine don't be surprised if the municipal works department gets an \"accidental\" computer-generated order to put start a new landfill on your front lawn or your quota is reduced to 4K.
	2. I don't need to crack /etc/passwd because I just modified su so that it doesn't prompt me. The admin staff doesn't even know I'm here. If you don't understand what I just said, this category does NOT apply to you!
	3. I've get the entire admin ticked off at me because I am always using all of the CPU time and trying to run programs that I don't have access to. I'm going to try cracking /etc/passwd next week, just don't tell anyone.
	4. I not only have a Unix account, but I slam VMS any chance get.
	5. I have a Unix account to do my stuff in.
	6. I have a VMS account.
	7. I've seen Unix and didn't like it. DEC rules!
	8. Unix geeks are actually nerds in disguise."
		num = gets.chomp.to_i
		lev = case num
		when 1 then "++++"
		when 2 then "+++"
		when 3 then "++"
		when 4 then "+"
		when 5 then ""
		when 6 then "-"
		when 7 then "--"
		when 8 then "---"
		end
		sixth = "U"+sys+lev
		if num < 4
		puts "You're pretty good at Unix. What do you think of Perl?"
		puts "	1. I am Larry Wall, Tom Christiansen, or Randal Schwartz.
	2. I don't write Perl, I speak it. Perl has superseded all other programming languages. I firmly believe that all programs can be reduced to a Perl one-liner. I use Perl to achieve status 2 in the above question.
	3. Perl is a very powerful programming tool. Not only do I no longer write shell scripts, I also no longer use awk or sed. I use Perl for all programs of less than a thousand lines.
	4. Perl is a powerful programming tool. I don't write shell scripts anymore because I write them in Perl.
	5. I know of Perl. I like Perl. I just haven't learned much Perl, but it is on my agenda.
	6. I know Perl exists, but that's all.
	7. What's Perl got that awk and sed don't have?
	8. Perl users are sick, twisted programmers who are just showing off.
	9. Perl combines the power of sh, the clarity of sed, and the performance of awk with the simplicity of C. It should be banned.
	10. Our paranoid admin won't let us install Perl! Says it's a \"hacking tool\"."
		num = gets.chomp.to_i
		seventh = case num
		when 1 then " P+++++"
		when 2 then " P++++"
		when 3 then " P+++"
		when 4 then " P++"
		when 5 then " P+"
		when 6 then " P"
		when 7 then " P-"
		when 8 then " P--"
		when 9 then " P---"
		when 10 then " P!"
		end
	else
		seventh = "" # I set it up this way, so there are spaces, because not all users will qualify to answer the Perl question, and if there weren't spaces in the case there would be double spaces when it ended up equaling "" later if I followed normal syntax writing the final line of the code generator
	end
		puts "How good are you at Linux?"
		puts "	1. I am Linus, grovel before
	2. I am a Linux wizard. I munch C code for breakfast and have enough room left over for a kernel debugging. I have so many patches installed that I lost track about ten versions ago. Linux newbies consider me a net.god.
	3. I use Linux exclusively on my system. I monitor comp.os.linux.* and even answer questions sometimes.
	4. I use Linux ALMOST exclusively on my system. I've given up trying to achieve Linux.God status, but welcome the OS as a replacement for DOS. I only boot to DOS to play games.
	5. I've managed to get Linux installed and even used it a few times. It seems like it is just another OS.
	6. I know what Linux is, but that's about all.
	7. I have no desire to use Linux and frankly don't give a rat's patootie about it. There are other, better, operating systems out there. Like Mac, DOS, or Amiga-OS. Or, better yet even, would be another free Unix OS like FreeBSD.
	8. Unix sucks. Because Linux = Unix, Linux Sucks. I worship Bill Gates.
	9. I am Bill Gates."
		num = gets.chomp.to_i
		eighth = case num
		when 1 then "L+++++"
		when 2 then "L++++"
		when 3 then "L+++"
		when 4 then "L++"
		when 5 then "L+"
		when 6 then "L"
		when 7 then "L-"
		when 8 then "L--"
		when 9 then "L---"
		end
		puts "What do you think of GNU Emacs?"
		puts "	1. Emacs is my login shell!! M-x doctor is my psychologist! I use emacs to control my TV and toaster oven! All you vi people don't know what you're missing! I read alt.religion.emacs, alt.sex.emacs, and comp.os.emacs.
	2. I know and use elisp regularly!
	3. Emacs is great! I read my mail and news with it!
	4. Yeah, I know what emacs is, and use it as my regular editor.
	5. Emacs is too big and bloated for my tastes.
	6. Emacs is just a fancy word processor.
	7. Emacs sucks! vi forever!!!
	8. Emacs sucks! pico forever!!!"
		num = gets.chomp.to_i
		ninth = case num
		when 1 then "E+++"
		when 2 then "E++"
		when 3 then "E+"
		when 4 then "E"
		when 5 then "E-"
		when 6 then "E--"
		when 7 then "E---"
		when 8 then "E----"
		end
		puts "How much do you use the World Wide Web?"
		puts "	1. I am a WebMaster . Don't even think about trying to view my homepage without the latest version of Netscape. When I'm not on my normal net connection, I surf the web using my Newton and a cellular modem.
	2. I have a homepage. I surf daily. My homepage is advertised in my .signature.
	3. I have the latest version of Netscape, and wander the web only when there's something specific I'm looking for.
	4. I have a browser and a connection. Occasionally I'll use them.
	5. The web is really a pain. Life was so much easier when you could transfer information by simple ASCII. Now everyone won't even consider your ideas unless you spiff them up with bandwidth-consuming pictures and pointless information links.
	6. A pox on the Web! It wastes time and bandwidth and just gives the uneducated morons a reason to clutter the Internet."
		num = gets.chomp.to_i
		tenth = case num
		when 1 then "W+++"
		when 2 then "W++"
		when 3 then "W+"
		when 4 then "W"
		when 5 then "W-"
		when 6 then "W--"
		end
		puts "How often do you use USENET News?"
		puts "	1. I am Tim Pierce.
	2. I read so many newsgroups that the next batch of news comes in before I finish reading the last batch, and I have to read for about 2 hours straight before I'm caught up on the morning's news. Then there's the afternoon...
	3. I read all the news in a select handful of groups.
	4. I read news recreationally when I have some time to kill.
	5. Usenet News? Sure, I read that once.
	6. News is a waste of my time and I avoid it completely.
	7. News sucks! 'Nuff said.
	8. I work for Time Magazine.
	9. I am a Scientologist.
	10. All I do is read news."
		num = gets.chomp.to_i
		eleventh = case num
		when 1 then "N++++"
		when 2 then "N+++"
		when 3 then "N++"
		when 4 then "N+"
		when 5 then "N"
		when 6 then "N-"
		when 7 then "N--"
		when 8 then "N---"
		when 9 then "N----"
		when 10 then "N*"
		end
		puts "What's your relation to USENET Oracle?"
		puts "	1. I am Steve Kinzler.
	2. I am an active Priest.
	3. I was a Priest, but have retired.
	4. I have made the Best Of Oracularities.
	5. I have been incarnated at least once.
	6. I've submitted a question, but it has never been incarnated.
	7. I sent my question to the wrong group and got flamed.
	8. Who needs answers from a bunch of geeks anyhow?"
		num = gets.chomp.to_i
		twelfth = case num
		when 1 then "o+++++"
		when 2 then "o++++"
		when 3 then "o+++"
		when 4 then "o++"
		when 5 then "o+"
		when 6 then "o"
		when 7 then "o-"
		when 8 then "o--"
		end
		puts "Kibo is."
		puts "	1. I am Kibo.
	2. I've had sex with Kibo.
	3. I've met Kibo.
	4. I've gotten mail from Kibo.
	5. I've read Kibo.
	6. I like Kibo.
	7. I know who Kibo is.
	8. I don't know who Kibo is.
	9. I dislke Kibo.
	10. I am currently hunting Kibo down with the intent of ripping his still-beating heart out of his chest and showing it to him as he dies.
	11. I am Xibo."
		num = gets.chomp.to_i
		thirteenth = case num
		when 1 then "K++++++"
		when 2 then "K+++++"
		when 3 then "K++++"
		when 4 then "K+++"
		when 5 then "K++"
		when 6 then "K+"
		when 7 then "K"
		when 8 then "K-"
		when 9 then "K--"
		when 10 then "K---"
		when 11 then "K----"
		end
		puts "What do you think of Windows?"
		puts "	1. I am Bill Gates.
	2. I have Windows, Windows 95, Windows NT, and Windows NT Advanced Server all running on my SMP RISC machine. I haven't seen daylight in six months.
	3. I am a MS Windows programming god. I wrote a VxD driver to allow MS Windows and DOS to share the use of my waffle iron. P.S. Unix sux.
	4. I write MS Windows programs in C and think about using C++ someday. I've written at least one DLL.
	5. I have installed my own custom sounds, wallpaper, and screen savers so my PC walks and talks like a fun house. Oh yeah, I have a hundred TrueType(tm) fonts that I've installed but never used. I never lose Minesweeper and Solitaire.
	6. Ok, so I use MS Windows, I don't have to like it.
	7. I'm still trying to insttall MS Windows and have at least one peripheral that never works right.
	8. MS Windows is a joke operating system. Hell, it's not even an operating system. NT is Not Tough enough for me either. 95 is how may times it will crash an hour.
	9. Windows has set back the computing industry by at least 10 years. Bill Gates should be drawn, quartered, hung, shot, poisoned, disembowelled, and then REALLY hurt."
		num = gets.chomp.to_i
		fourteenth = case num
		when 1 then "w+++++"
		when 2 then "w++++"
		when 3 then "w+++"
		when 4 then "w++"
		when 5 then "w+"
		when 6 then "w"
		when 7 then "w-"
		when 8 then "w--"
		when 9 then "w---"
		end
		puts "What do you think of OS/2?"
		puts "	1. I live, eat and breathe OS/2. All of my hard drives are HPFS. I am the Anti-Gates.
	2. I use OS/2 for all my computing needs. I use some DOS and Windows programs, but run them under OS/2. If the program won't run under OS/2, then obviously I don't need it.
	3. I keep a DOS partition on my hard drive \"just in case\". I'm afraid to try HPFS.
	4. I finally managed to get OS/2 installed but wasn't too terribly impressed.
	5. Tried it, didn't like it.
	6. I can't even get the thing to install!
	7. Windows RULES!!! Long live Bill Gates. (See Option 1 of Previous Question)
	8. I am Bill Gates of Borg. OS/2 is irrelevant."
		num = gets.chomp.to_i
		fifteenth = case num
		when 1 then "O+++"
		when 2 then "O++"
		when 3 then "O+"
		when 4 then "O"
		when 5 then "O-"
		when 6 then "O--"
		when 7 then "O---"
		when 8 then "O----"
		end
		puts "How do you feel about the Macintosh?"
		puts "	1. I am a Mac guru. Anything those DOS putzes and Unix nerds can do, I can do better, and if not, I'll write the damn software to do it.
	2. A Mac has its uses and I use it quite often.
	3. I use a Mac, but I'm pretty indifferent about it.
	4. Macs suck. ALl real geeks have a character prompts.
	5. Macs do more than suck. They make a user stupid by allowing them to use the system without knowing what they are doing. Mac weenies have lower IQs than the fuzz in my navel."
		num = gets.chomp.to_i
		sixteenth = case num
		when 1 then "M++"
		when 2 then "M+"
		when 3 then "M"
		when 4 then "M-"
		when 5 then "M--"
		end
		puts "How do you feel about VMS?"
		puts "	1. I am a VMS sysadmin. I wield far more power than those UNIX admins, because UNIX can be found on any dweeb's desktop. Power through obscurity is my motto.
	2. Unix is a passing fad compared to the real power in the universe, my VMS system.
	3. I tend to like VMS better than Unix.
	4. I've used VMS.
	5. Unix is much better than VMS for my computing needs.
	6. I would rather smash my head repeatedly into a brick wall than suffer the agony of working with VMS. It's reminiscent of a dead and decaying pile of moose droppings. Unix rules the universe."
		num = gets.chomp.to_i
		seventeenth = case num
		when 1 then "V+++"
		when 2 then "V++"
		when 3 then "V+"
		when 4 then "V"
		when 5 then "V-"
		when 6 then "V--"
		end
		puts "Where do you land on the political and social issues sliding scale?"
		puts "	1. Legalize drugs! Abolish the government. \"Fuck the draft!\"
	2. I give to liberal causes. I march for gay rights. I'm a card carrying member of the ACLU. Keep abortion safe and legal.
	3. My whole concept of liberalism is that nobody has the right to tell anybody else what to do, on either side of the political fence. If you don't like it, turn the bloody channel.
	4. I really don't have an opinion; nobody's messing with my freedoms right now.
	5. Label records! Keep dirty stuff off the TV and the Internet.
	6. Oppose sex education, abortion rights, gay rights. Rush Limbaugh is my spokesman.
	7. Repent left-wing sinners and change your wicked evil ways. Buchanan/Robertson in '96."
		num = gets.chomp.to_i
		eighteenth = case num
		when 1 then "PS+++"
		when 2 then "PS++"
		when 3 then "PS+"
		when 4 then "PS"
		when 5 then "PS-"
		when 6 then "PS--"
		when 7 then "PS---"
		end
		puts "What are your thoughts on politics and economics?"
		puts "	1. Abolish antitrust legislation. Raise taxes on everyone but the rich so that the money can trickle-down to the masses.
	2. Keep the government off the backs of businesses. Deregulate as much as possible.
	3. Balance the budget with spending cuts and an amendment.
	4. Distrust both government and business.
	5. It's ok to increase government spending, so we can help more poor people. Tax the rich! Cut the defense budget!
	6. Capitalism is evil! Government should provide the services we really need. Nobody should be rich."
		num = gets.chomp.to_i
		nineteenth = case num
		when 1 then "PE+++"
		when 2 then "PE++"
		when 3 then "PE+"
		when 4 then "PE"
		when 5 then "PE-"
		when 6 then "PE--"
		end
		puts "How much of a cypherpunk are you?"
		puts "	1. I am T.C. May.
	2. I am on the cypherpunks mailing list and active around Usenet. I never miss an opportunity to talk about the evils of Clipper and ITAR and the NSA. Orwell's 1984 is more than a story, it is a warning to our's and future generations. I'm a member of the EFF.
	3. I have an interest and concern in privacy issues, but in reality I am not really all that active or vocal.
	4. I'm pretty indifferent on the whole issue.
	5. It seems to me that all of these concerns are a little extreme. I mean, the government must be able to protect itself from criminals and the populace from indecent speech.
	6. Get a life. The only people that need this kind of protection are people with something to hide. I think cypherpunks are just a little paranoid.
	7. I am L. Detweiler."
		num = gets.chomp.to_i
		twentieth = case num
		when 1 then "Y+++"
		when 2 then "Y++"
		when 3 then "Y+"
		when 4 then "Y"
		when 5 then "Y-"
		when 6 then "Y--"
		when 7 then "Y---"
		end
		puts "What's your experience with Pretty Good Privacy (PGP)?"
		puts "	1. I am Phillip Zimmerman.
	2. I don't send or answer mail that is not encrypted, or at the very least signed. If you are reading this without decrypting it first, something is wrong. IT DIDN'T COME FROM ME!
	3. I have the most recent version and use it regularly.
	4. \"Finger me for my public key.\"
	5. I've used it, but stopped long ago.
	6. I don't have anything to hide.
	7. I feel that the glory of the Internet is in the anarchic, trusting environment that so nurtures the exchange of information. Encryption just bogs that down.
	8. If you support encryption on the Internet, you must be a drug dealer or terrorist or something like that.
	9. Oh, here is something you all can use that is better (insert Clipper here)."
		num = gets.chomp.to_i
		twentyfirst = case num
		when 1 then "PGP++++"
		when 2 then "PGP+++"
		when 3 then "PGP++"
		when 4 then "PGP+"
		when 5 then "PGP"
		when 6 then "PGP-"
		when 7 then "PGP--"
		when 8 then "PGP---"
		when 9 then "PGP----"
		end
		puts "What do you think of Star Trek?"
		puts "	1. It's not just a TV show, it's a religion. I know all about warp field dynamics and the principles behind the transporter. I have memorized the TECH manual. I speak Klingon. I go to cons with Vulcan ears on. I have no life.
	2. It's the best show around. I have all the episodes and the movies on tape and can quote entire scenes verbatim. I've built a few of the model kits too. But you'll never catch me at one of those conventions. Those people are kooks.
	3. It's a damn fine TV show and is one of the only things good on television any more.
	4. It's just another TV show.
	5. Maybe it is just me, but I have no idea what the big deal with Star Trek is. Perhaps I'm missing something but I just think it is bad drama.
	6. Star Trek is just another Space Opera. William Shatner isn't an actor, he's a poser! And what's with this Jean-Luc Picard? A Frenchman with a British accent? Come on. Isn't Voyager just a rehash of Lost in Space? Has Sisko even breathed in the last two seasons? Come on. I'd only watch this show if my remote control broke.
	7. Star Trek SUCKS! It is the worst crap I have ever seen! Hey, all you trekkies out there, GET A LIFE! (William Shatner is in this category)
	8. I identify with Barclay, the greatest of the Trek Geeks."
		num = gets.chomp.to_i
		twentysecond = case num
		when 1 then "t+++"
		when 2 then "t++"
		when 3 then "t+"
		when 4 then "t"
		when 5 then "t-"
		when 6 then "t--"
		when 7 then "t---"
		when 8 then "t*"
		end
		puts "What do you think of Babylon 5?"
		puts "	1. I am J. Michael Straczynski.
	2. I am a True Worshipper of the Church of Joe who lives eats breathes and thinks Babylon 5, and has Evil thoughts about stealing Joe's videotape archives just to see episodes earlier. I am planning to break into the bank and steal the triple-encoded synopsis of the 5-year arc.
	3. Finally a show that shows what a real future would look like. None of this Picardian \"Let's talk about it and be friends\" crap. And what's this? We finally get to see a bathroom! Over on that Enterprise, they've been holding it for over seven years!
	4. Babylon 5 certainly presents a fresh perspective in the Sci-Fi universe. I watch it weekly.
	5. I've seen it, I am pretty indifferent to it.
	6. The show is sub-par. The acting is wooden, the special effects are obviously poor quality. In general, it seems like a very cheap Star Trek ripoff.
	7. You call this Sci-Fi? That is such a load of crap! This show is just a soap with bad actors, piss-poor effects, and lame storylines. Puh-leese."
		num = gets.chomp.to_i
		twentythird = case num
		when 1 then "5++++"
		when 2 then "5+++"
		when 3 then "5++"
		when 4 then "5+"
		when 5 then "5"
		when 6 then "5-"
		when 7 then "5--"
		end
		puts "What do you think of The X-Files?"
		puts "	1. I am Chris Carter.
	2. This is the BEST show on TV, and it's about time. I've seen everything David Duchovny and Gillian Anderson have ever done that been recorded and I'm a loyal Duchovny/ Gillian Anderson fan. I've Converted at least 10 people. I have every episode at SP, debate the fine details on-line, and have a credit for at least 2 YAXAs.
	3. This is one of the better shows I've seen. I wish I'd taped everything from the start at SP, because I'm wearing out my EP tapes. I'll periodically debate online. I've Converted at least 5 people. I've gotten a YAXA.
	4. I've Converted my family and watch the show when I remember. It's really kinda fun.
	5. Ho hum. Just another Fox show.
	6. It's ok if you like paranoia and conspiracy stories, but, let's face it, it's crap.
	7. If I wanted to watch this kind of stuff, I'd talk to Oliver Stone."
		num = gets.chomp.to_i
		twentyfourth = case num
		when 1 then "X++++"
		when 2 then "X+++"
		when 3 then "X++"
		when 4 then "X+"
		when 5 then "X"
		when 6 then "X-"
		when 7 then "X--"
		end
		puts "How much are you into Role-Playing?"
		puts "	1. I've written and published my own gaming materials.
	2. There is no life outside the role of the die. I know all of piddly rules of (chosen game). _MY_ own warped rules scare the rest of the players.
	3. I've got my weekly sessions set up and a character that I know better than I know myself.
	4. Role-Playing? That's just something to do to kill a Saturday afternoon.
	5. Gosh, what an utter waste of time!
	6. Role-Players are instruments of pure evil.
	7. I work for T$R.
	8. I thought life WAS role-playing?"
		num = gets.chomp.to_i
		twentyfifth = case num
		when 1 then "R+++"
		when 2 then "R++"
		when 3 then "R+"
		when 4 then "R"
		when 5 then "R-"
		when 6 then "R--"
		when 7 then "R---"
		when 8 then "R*"
		end
		puts "How often do you watch television?"
		puts "	1. There's nothing I can experience \"out there\" that I can't see coming over my satellite dish. I wish there were MORE channels. I live for the O.J. Trial.
	2. I just leave the tv on, to make sure I don't miss anything.
	3. I watch some tv every day.
	4. I watch only the shows that are actually worthwhile, such as those found on PBS.
	5. I watch tv for the news and 'special programming.'
	6. I turn my tv on during natural disasters.
	7. I do not own a television."
		num = gets.chomp.to_i
		twentysixth = case num
		when 1 then "tv+++"
		when 2 then "tv++"
		when 3 then "tv+"
		when 4 then "tv"
		when 5 then "tv-"
		when 6 then "tv--"
		when 7 then "!tv"
		end
		puts "How many books do you read?"
		puts "	1. I read a book a day. I have library cards in three states. I have discount cards from every major bookstore. I've ordered books from another country to get my Favorite Author Fix.
	2. I consume a few books a week as part of a staple diet.
	3. I find the time to get through at least one new book a month.
	4. I enjoy reading, but don't get the time very often.
	5. I read the newspaper and the occasional book.
	6. I read when there is no other way to get the information.
	7. I did not actually READ the geek code, I just had someone tell me."
		num = gets.chomp.to_i
		twentyseventh = case num
		when 1 then "b++++"
		when 2 then "b+++"
		when 3 then "b++"
		when 4 then "b+"
		when 5 then "b"
		when 6 then "b-"
		when 8 then "b--"
		end
		puts "What do you think of Dilbert?"
		puts "	1. I am Scott Adams.
	2. I've received mail from Scott Adams. I'm in the DNRC (Dogbert's New Ruling Class).
	3. I am a Dilbert prototype.
	4. I work with people that act a lot like Dilbert and his boss.
	5. I read Dilbert daily, often understanding it.
	6. I read Dilbert infrequently, rarely understanding it.
	7. Is that the comic about the engineers?
	8. Don't read it, but I think the dog is kinda cute.
	9. I don't think it's funny to make fun of managers trying their best to run their organizational units."
		num = gets.chomp.to_i
		twentyeighth = case num
		when 1 then "DI+++++"
		when 2 then "DI++++"
		when 3 then "DI+++"
		when 4 then "DI++"
		when 5 then "DI+"
		when 6 then "DI"
		when 7 then "DI-"
		when 8 then "DI--"
		when 9 then "DI---"
		end
		puts "What do you think of DOOM?"
		puts "	1. I work for iD Software.
	2. I crank out PWAD files daily, complete with new monsters, weaponry, sounds and maps. I'm a DOOM God. I can solve the original maps in nightmare mode with my eyes closed.
	3. I've played the shareware version and bought the real one and I'm actually pretty good at the game. I occasionally download PWAD files and play them too.
	4. It's a fun, action game that is a nice diversion on a lazy afternoon.
	5. I've played the game and I'm pretty indifferent.
	6. I've played the game and really didn't think it was all that impressive.
	7. It's an overy-violent game and pure crap.
	8. To hell with Doom, I miss Zork.
	9. Ive seen better on my Atari 2600."
		num = gets.chomp.to_i
		twentyninth = case num
		when 1 then "D++++"
		when 2 then "D+++"
		when 3 then "D++"
		when 4 then "D+"
		when 5 then "D"
		when 6 then "D-"
		when 7 then "D--"
		when 8 then "D---"
		when 9 then "D----"
		end
		puts "How well are you versed in The Geek Code?"
		puts "	1. I am Robert Hayden.
	2. I have made a suggestion for future versions of the code (note that making a suggestion just to get a level 2 rating doesn't count, you also have to at least qualify for level 3 rating :-)
	3. I have memorized the entire geek code, and can decode others' codes in my head. I know by heart where to find the current version of the code on the net.
	4. I know what each letter means, but sometimes have to look up the specifics.
	5. I was once level 4 (or higher), but the new versions are getting too long and too complicated.
	6. I know what the geek code is and even did up this code.
	7. What a tremendous waste of time this Geek Code is.
	8. Not only a waste of time, but it obviously shows that this Hayden guy needs a life."
		num = gets.chomp.to_i
		thirtieth = case num
		when 1 then "G+++++"
		when 2 then "G++++"
		when 3 then "G+++"
		when 4 then "G++"
		when 5 then "G+"
		when 6 then "G"
		when 7 then "G-"
		when 8 then "G--"
		end
		puts "How much education do you have?"
		puts "	1. I am Stephen Hawking.
	2. Managed to get my Ph.D.
	3. Got a Masters degree.
	4. God a Bachelors degree.
	5. Got an Associates degree.
	6. Finished High School.
	7. Haven't finished High School.
	8. Haven't even entered High School.
	9. I learned everything there is to know about life from the \"Hitchhiker's Trilogy\"."
		num = gets.chomp.to_i
		thirtyfirst = case num
		when 1 then "e+++++"
		when 2 then "e++++"
		when 3 then "e+++"
		when 4 then "e++"
		when 5 then "e+"
		when 6 then "e"
		when 7 then "e-"
		when 8 then "e--"
		when 9 then "e*"
		end
		puts "Describe your housing situation."
		puts "	1. Living in a cave with 47 computers and an Internet feed, located near a Dominoes pizza. See option 9 of the clothing question.
	2. Living alone, get out once a week to buy food, no more than once a month to do laundry. All surfaces covered.
	3. Friends come over to visit every once in a while to talk about Geek things. There is a place for them to sit.
	4. Living with one or more registered geeks.
	5. Living with one or more people who know nothing about being a Geek and refuse to watch Babylon 5.
	6. Married, (persons living romantically with someone might as well label themselves this, you're as good as there already.)
	7. Married with children - Al Bundy can sympathize.
	8. I am stuck living with my parents!
	9. I'm not sure where I live anymore. This lab/workplace seems like home to me."
		num = gets.chomp.to_i
		thirtysecond = case num
		when 1 then "h++"
		when 2 then "h+"
		when 3 then "h"
		when 4 then "h-"
		when 5 then "h--"
		when 6 then "h---"
		when 7 then "h----"
		when 8 then "h!"
		when 9 then "h*"
		end
		puts "What's your relationship status?"
		puts "	1. Found someone, dated, and am now married.
	2. I've dated my current S.O. for a long time.
	3. I date frequently, bouncing from one relationship to another.
	4. I date periodically.
	5. I have difficulty maintaining a relationship.
	6. People just aren't interested in dating me.
	7. I'm beginning to think that I'm a leper or something, the way people avoid me like the plague.
	8. I've never had a relationship.
	9. I claim membership in the SBCA (Sour Bachelor(ette)'s Club of America). The motto is 'Bitter, but not Desperate'. First founded at Caltech.
	10. I was going out with someone, but the asshole dumped me."
		num = gets.chomp.to_i
		thirtythird = case num
		when 1 then "r+++"
		when 2 then "r++"
		when 3 then "r+"
		when 4 then "r"
		when 5 then "r-"
		when 6 then "r--"
		when 7 then "r---"
		when 8 then "!r"
		when 9 then "r*"
		when 10 then "r%"
		end
		puts "What is your gender?"
		puts "	1. male
	2. female
	3. Prefer not to state"
		num = gets.chomp.to_i
		gend = case num
		when 1 then "m"
		when 2 then "f"
		when 3 then "z"
		end
		puts "And finally, what is your sex life like?" # I debated permitting this. It was in the original Geek Code, so I have to leave it in, but I don't have to like it. When I end up making Geek Code v4 I'll neglect to leave that category in.
		puts "	1. I am Madonna.
	2. I have a few little rug rats to prove I've been there. Besides, with kids around, who has time for sex?
	3. I'm married, so I can get it (theoretically) whenever I want.
	4. I was once referred to as 'easy'. I have no idea where that might have come from though.
	5. I've had real, live sex.
	6. I've had sex. Oh! You mean with someone else? Then no.
	7. Not having sex by choice.
	8. Not having sex because I can't get any...
	9. Not having sex because I'm a nun or priest.
	10. I'm a pervert.
	11. I've been known to make perverts look like angels.
	12. Sex? What's that? I've had no sexual experiences.
	13. It's none of your business what my sex life is like.
	14. Sex? What's that? No experience, willing to learn!"
		num = gets.chomp.to_i
		thirtyfourth = case num # Wow, had no idea it would get to 34 entries. Nor did I think this would be so many lines of code.
		when 1 then "q+++++" # I had to use 'q' because I've got to replace it a few lines down with the person's gender, since some modifiers appear before the gender.
		when 2 then "q++++"
		when 3 then "q+++"
		when 4 then "q++"
		when 5 then "q+"
		when 6 then "q"
		when 7 then "q-"
		when 8 then "q--"
		when 9 then "q---"
		when 10 then "q*"
		when 11 then "q**"
		when 12 then "!q"
		when 13 then "q?"
		when 14 then "!z+"
		end
		thirtyfourth["q"] = gend
		puts "Here's your full Geek Code!"
		puts "-----BEGIN GEEK CODE BLOCK-----"
		puts "Version: 3.12"
		puts first + " " + second + " " + third + " " + fourth + " " + fifth + " " + sixth + seventh + " " + eighth + " " + ninth + " " + tenth + " " + eleventh + " " + twelfth + " " + thirteenth + " " + fourteenth + " " + fifteenth + " " + sixteenth + " " + seventeenth + " " + eighteenth + " " + nineteenth + " " + twentieth + " " + twentyfirst + " " + twentysecond + " " + twentythird + " " + twentyfourth + " " + twentyfifth + " " + twentysixth + " " + twentyseventh + " " + twentyeighth + " " + twentyninth + " " + thirtieth + " " + thirtyfirst + " " + thirtysecond + " " + thirtythird + " " + thirtyfourth
		puts "------END GEEK CODE BLOCK------"
end
# To do: add method to translate geek code version 3.12 into legible format
# To do: access a dictionary in Ruby to make an indie band name generator
# To do: make a method comparing your complete genome to that of Kevin Bacon
# Idea: Relative war timer, prints out when every important war would begin if it ended today, and when it would end if it began today
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