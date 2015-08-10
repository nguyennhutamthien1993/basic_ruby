c = [1,2,3,4,5]
b = c.collect{|x| x*10}
puts b
a = [ "a", "b", "c", "d" ]
a.fill("x")              #=> ["x", "x", "x", "x"]
a.fill("z", 2, 2)        #=> ["x", "x", "z", "z"]
a.fill("y", 0..1)        #=> ["y", "y", "z", "z"]
p a
a.fill { |i| i*i }       #=> [0, 1, 4, 9]
p a
p a.fill(2) { |i| 2*i*i } #=> [0, 1, 8, 27]
a1 = [ "q", "r", "s", "t" ]
p a1.first     #=> "q"
p a1.first()  #=> ["q", "r"]
a = [ 1, 2, [3, [4, 5] ],[4, 5] ]
p a.flatten() 
p a
arr = [1, 2, 3]
puts arr.frozen?
p arr.pop
arr.freeze
#p arr.shift
puts arr.frozen?
a = [ "a", "ba", "c" ]
p a.include?("b")   #=> true
a.include?("z")   #=> false
a = %w{ a b c d e f }
p a.select { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]
p a