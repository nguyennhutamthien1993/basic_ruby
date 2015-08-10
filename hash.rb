#arr -> hash
 arr = ["Ruby", 1, "Python", 2]
 hash = *arr
 p Hash[*arr].invert
 arr = [[:Ruby, 1], [:Python, 2]]
 puts Hash[*arr]
#each
 hash = { Ruby: 1, Python: 2, Java: 3 }
 hash.each do |key, value|
 	p "#{key}: #{value}"
 	end
#fetch

puts"  hello  world ".strip   #=> "hello  "

ary = [0, 3, 4, 6, 8, 12]
# try to find v such that 4 <= v < 8
p ary.bsearch {|x| 3 - x/3 } #=> 4 or 7
# try to find v such that 8 <= v < 10
p ary.bsearch {|x| 3 - x / 2 } #=> nil
a = [ "a", "b", "c", "d" ]
a.map! {|x| x + "!" }
a #=>  [ "a!", "b!", "c!", "d!" ]
p a.collect!.with_index {|x, i| x[0...i] }
p a #=>  ["", "b", "c!", "d!"]