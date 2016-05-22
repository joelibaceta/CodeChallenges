class Duplicates

	def self.findDuplicate(array)
		@hash = Hash.new 
	  	# @i = 1 # No necesario
	  	
	  	#array.each do |x|    	
	  	#	@hash.has_key?(x) ? (return x) : @hash[x] = @i
		#end
		
		# Representacion en una linea
		array.map{|x| @hash[x] ? (return x) : @hash[x] = 1; # Oservacion, se esta guardando el 1 innecesariamente
	end

  # Find the first non­repeating character in a string: ("DEFD" ­> E)

  	# First Method, this is fastest
  	def self.firstNonRepeating(s)

	    	# characters = s.split("") No es necesario un String es un arreglo de chars
	    	repetitions =  Hash.new 
	    	#nonrepeat = [] No necesario
	 
	 	beginning_time = Time.now
	 	
	 	#characters.each do |c|
	 	#	if repetitions.has_key?(c)
	 	#		repetitions[c] = repetitions[c] + 1
	 	#	else
	 	#		repetitions[c] = 1
	 	#	end
	 	#end
	 	
	 	# Representacion de una linea
	 	characters.each_char {|c| repetitions[c] ? repetitions[c] += 1 : repetitions[c] = 1
		
	 	#repetitions.each do |k,v|
	 	#	if v == 1
	 	#		nonrepeat << k
	 	#	end
	 	#end
	 	
	 	# Cualquiera de estos dos pasos son ineficientes ya que se debe hacer un bucle por cada letra del texto
	 	
	 	result = repetitions.group_by{|k,v| v} # Agrupar el hash por valor
	 	
	 	# puts result["1"].first imprimir la primera letra con una sola repeticion
	 	
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
