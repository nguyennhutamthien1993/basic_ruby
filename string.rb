str = "i love you "
b = "hklhhhheehlelo thellre"
puts str + 123.to_s
puts Math.sqrt(2)
a = Math.sqrt(2)
puts (1..9).size
puts "a".length
puts str.capitalize!
puts "a sd 2 as 3" =~/\q/
puts b[/[hkl](.)\1/, 2]
puts str.each_byte.to_a
puts "a"
a = "hdoellakdoa-worldo"  
puts a .count "a\-eo" 
puts a.codepoints
puts a.count("ej-m") 
puts 'Ruby is practical programming language!'.gsub(/p.*?a/, ' awesome ') 
puts 'Ruby is practical programming language!'.gsub(/a.*?i/){ $&.to_s.upcase}
str1 = 'Ruby, Python, Java'
puts str1.split(/,\s/, 3)
puts str1.split(", ")
puts 'Ruby is my 1st language!'.slice(/b.*?\s/)
'Ruby'.each_char {|c| str << "#{c}!"}
p str
"Ruby\n is\n good language!".each_line { |line| puts line }
p "abcd".insert(-1, 'XY')