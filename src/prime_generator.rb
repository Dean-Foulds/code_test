class PrimeGenerator

	def initialize(n)
		@n = n
	end

	def prompt
		print ">  "
	end

	def new_prime
		puts "Please enter the number of primes you wish to display multiplied"
		prompt()
		n = gets.strip.to_i
		print_table(n)
	end

	def is_prime?(n)
		(2...n).each do |divisor|
			return false if n % divisor == 0
		end
		true
	end

	def prime_generate(n)
		@primes = []
		counter = 2
		until @primes.size == n
			if is_prime?(counter)
				@primes << counter
			end
			counter += 1
		end
		@primes
	end

	def print_table(n)
		rows = prime_generate(n)
		columns = rows
		print "\n\n"
		print "   |"
		columns.each {|column_num| print " %-3d " % column_num}
		print "\n"
		print "___+" + ("_____" * rows.size) 
		print "\n\n"
		rows.each do |row_num|
			print "%-3d| " % row_num
			columns.each {|column_num| print " %-3d " % (column_num * row_num)}
			print "\n\n"
		end
	end
end	



