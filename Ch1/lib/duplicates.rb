class Duplicates

	def self.findDuplicate(array)

	  	@hash = Hash.new 

	  	@i = 1

	    array.each do |x|    	
	    	@hash.has_key?(x) ? (return x) : @hash[x] = @i
	    end
	end

  # Find the first non­repeating character in a string: ("DEFD" ­> E)

  	# First Method, this is fastest
  	def self.firstNonRepeating(s)

	    characters = s.split("")
	    repetitions =  Hash.new 
	    nonrepeat = []
	 
	 	beginning_time = Time.now
	 	characters.each do |c|
	 		if repetitions.has_key?(c)
	 			repetitions[c] = repetitions[c] + 1
	 		else
	 			repetitions[c] = 1
	 		end
	 	end


	 	repetitions.each do |k,v|
	 		if v == 1
	 			nonrepeat << k
	 		end
	 	end

	 	# puts nonrepeat
	 	end_time = Time.now
	 	puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
	end

	#Second Method
	def self.first_nonrepeat(s)
		beginning_time = Time.now
	   
	    nonrepeat = []
	    repeat = []
	    s.each_char do |c|
	        if !repeat.include?(c) && !nonrepeat.include?(c)
	            nonrepeat << c
	        elsif nonrepeat.include?(c)
	            nonrepeat.delete(c)
	            repeat << c
	        end
	    end
	    end_time = Time.now

	 	puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
	    return !nonrepeat.empty? ? nonrepeat.first : ""    
	end

end
