=begin

p IO.binread("testfile")           #=> "This is line one\nThis is line two\nThis is line three\nAnd so on...\n"
p IO.binread("testfile", 20)       #=> "This is line one\nThi"
p IO.binread("testfile", 20, 10)   #=> "ne one\nThis is line "
IO.binwrite("testfile","I have just written to the file")
p IO.binread("testfile")
p File.size?("testfile")
p File::ftype("testfile")
#File.delete("input.txt")
aFile = File.new("input.txt","a+")

if aFile
	#aFile.syswrite("Hello\n")
	
	#aFile.sysread(size)
    aFile.syswrite("I am Nguyen Nhu Tam Thien\n")
    p size = File.size?("input.txt")
    aFile.rewind
    p aFile.sysread(size)
    p IO.binread("input.txt")
else
   puts "Unable to open file!"
end
p IO.binread("input.txt")
p Dir.pwd
p Dir.entries("/home/thien/rubyExercise").join(' ')
Dir.foreach("/home/thien/rubyExercise") do |entry|
   puts entry
end
p 1
require 'tmpdir'
bFile = File.new(File.join(Dir.tmpdir,"file.txt"),"w")
bFile.syswrite("Hello")
bFile.puts "This is a temporary file"
Dir.foreach("/home/thien/rubyExercise") do |entry|
   puts entry
end
p "2"
p arr = IO.readlines("input.txt")=end
=end
p "Open file" and p ("Hello") if File.file?("input.txt")
#File.open("input.txt")
p Dir.entries("/home/thien/rubyExercise").join(' ')
Dir.chdir("/home/thien/rubyDocument")
p Dir.pwd
Dir.chdir("/home/thien/rubyExercise")
p Dir.pwd