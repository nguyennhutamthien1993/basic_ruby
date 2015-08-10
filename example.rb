#!/home/thien/rubyExercise
a = 'Hello World Thien'
#b = [0]*3
b = %r[hi]
b1 = %q[hi1]
puts a.upcase
puts a.capitalize
puts a.ljust(15)
puts a.swapcase
puts a.squeeze
puts a[/W.*?!/]
puts a.split('o').join("^_^").concat("End end end !")
puts a.split(/[o]/)
puts b, b1
puts "Won't you read O'Reilly's book?"

c = [1,2,3,4,5]
d = Array.new
d = c.collect {|c| c*10}
puts d
