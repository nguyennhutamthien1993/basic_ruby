class Fraction
	attr_accessor :numerator,:denominator
	def initialize(a,b)
		@numerator = a
		@denominator =b
	end
	def multiplication (fraction)
		@numerator *= fraction.numerator
		@denominator *= fraction.denominator
		self.compact_fraction
	end
	def division (fraction)
		@numerator *= fraction.denominator
		@denominator *= fraction.numerator
		self.compact_fraction
	end
	def compact_fraction
		num = Fraction.max_common_divisor(@numerator,@denominator)
		@numerator /= num
		@denominator /= num
	end
	def addition (fraction)

		num = Fraction.min_common_multiple(@denominator,fraction.denominator)
		mul1 = num/@denominator
		mul2 = num/fraction.denominator
		
		@numerator = mul1*@numerator + mul2*fraction.numerator
		@denominator = num
		self.compact_fraction
		
	end
	def subtraction (fraction)
		num = (fraction.numerator*fraction.denominator)/Fraction.max_common_divisor(fraction.numerator,fraction.denominator)
		mul1 = num/@denominator
		mul2 = num/fraction.denominator
		

		#kq = mul1*@numerator - mul2*fraction.numerator
		#if (kq < 0) 
		#	puts "The Result is negative"
		#else
		@numerator = mul1*@numerator - mul2*fraction.numerator
		@denominator = num
		self.compact_fraction	
		#end
	end
	def self.max_common_divisor(a,b)
		while ( a != b ) do
			if (a > b)
				a -= b
			else
				if (b > a)
					b -= a
				end
			end
		end
		return a
	end
	def self.min_common_multiple(a,b)
		mul = a*b
		maxCD = Fraction.max_common_divisor(a,b)
		result = mul/maxCD
		return result
	end
	def display_fraction
		self.compact_fraction
		puts "Fraction : #{@numerator}/#{@denominator}"
	end
	def self.input_fraction
		fraction = Fraction.new(0,0)
		while true do
			puts "please, input a numerator :"
			nume = gets.chomp.to_i
			puts "input a denominator : "
			deno = gets.chomp.to_i
			
			if ( nume == 0 || deno == 0) 
				puts "Invalid input! please,try a gain!"
			else break
			end
		end
		fraction.numerator = nume
		fraction.denominator = deno
		return fraction
end
end

=begin
fract1 = Fraction.new(1,5)
fract2 = Fraction.new(2,6)
fract1.display_fraction
fract1.subtraction(fract2)
puts "#{fract1.numerator} / #{fract1.denominator}"
fract1.display_fraction
fract2.display_fraction
=end


#main 

while true do
	fract1 = Fraction.new(0,0)
	puts "Input value for the first fraction"
	fract1 = Fraction.input_fraction
	puts "Input value for the second fraction"
	fract2 = Fraction.new(0,0)
	fract2 = Fraction.input_fraction
	
	while true do
		puts "Give me a method( + , - , * , :) "
		puts "Plus 2 fraction, input 0"
		puts "Sub 2 fraction ,input 1"
		puts "Mul 2 fraction, input 2"
		puts "Div 2 fraction, input 3"
		method = gets.chomp
		
		if (method == "0")
			puts "you selected 0"
			fract1.addition(fract2)
			fract1.display_fraction
			break
		end
		if (method == "1")
			puts "you selected 1"
			fract1.subtraction(fract2)
			fract1.display_fraction
			break
		end
		if (method == "2")
			puts "you selected 2"
			fract1.multiplication(fract2)
			fract1.display_fraction
			break
		end
		if (method == "3")
			puts "you selected 3"
			fract1.division (fract2)
			fract1.display_fraction
			break
		end
		puts "invalid selection! please, try again"
	end

	
		puts "do  you want to try another"
		puts "to exit, input 0"
		puts "to continue, input anythings (except 0)"
		tryit = gets.chomp
		if (tryit == "0") 
			puts "you selected exit"
			break
		end	
		puts "you selected continue"
	
end

