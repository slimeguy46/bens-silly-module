module BensSillyModule
	# Created by Benjamin Rausch!
	$insults = ["How's that GED working out for you?","My cat has more brain cells than you.","The founding fathers would be so proud to know we let people like you vote.","I'm fairly confident Forrest Gump could destroy you in chess.","Is that your face or a Halloween mask?","If you were a religion, you'd be Scientology.","You make chimpanzees look sophisticated.","Fun fact: the average bum receives more hundred dollar bills in his tin cup each day than thoughts you'll ever have in your life."]
	def BensSillyModule.meow(num)
		num.times do
			puts "meow"
		end
	end
	def BensSillyModule.insult()
		prng = Random.new()
		puts $insults[((prng.rand)*($insults.length)).floor]
	end
	def BensSillyModule.sagan()
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
		puts words
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
end
