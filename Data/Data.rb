

			file = File.open("data.csv", 'r')

			array = []

			file.each_line do |line|
				array = line.split(',')
			end

		def min(array)
			puts "min: #{array.min}"
		end

		def max(array)
			puts "max: #{array.max}"	
		end

		def average(array)
			total = 0
			average = 0
			array.each do |element|
			total += element.to_f
		end
			average = total / array.length
			puts "mean: #{average}"
		end

	def mode(array)
		var = 0
		mode = 0
		prevVar = 0
		array.each do |i|
			array.each do |n|
				if i == n
					var += 1
					mode = n if var > prevVar
					prevVar = var
				end
			end
			var = 0
		end
		puts "mode: #{mode}"
	end

	def median(array)
		sorted = array.sort
		length = array.length
		median = 0

		if length%2 == 0
			first = sorted[length/2 - 1]
			second = sorted[length/2] 

			median = (first + second) / 2
		else
			median = sorted[(length-1)/2]
		end
		puts "median: #{median}"
	end

	def q1(array)
	   arr = array.sort
	   length = arr.size
	   quart = (length/4.0).floor
	   fraction = 1-((length/4.0)-quart)
	   new_arr = arr[quart..-(quart + 1)]
	   (fraction*(new_arr[0]+new_arr[-1]) + new_arr[1..-2].inject(:+))/(length/2.0)
	end


	def quartile(array,n=3)
  	arr.sort!
  	split = median_split arr
  	case n
  	when 1
    	median split[0]
  	when 2
    	median arr
  	when 3
    	median split[1]
  end

  def results
		puts "Number Summary:"
		min(array)
		max(array)
		average(array)
		median(array)  
		mode(array)
		quartile(array, n=3)
		q1(array)
		end
	end
end
