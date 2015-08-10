require 'dbi'
# require 'mysql'
# require 'dbd-mysql'
begin
	dbh = DBI.connect('DBI:Mysql:quanly:localhost','root','2008')
	sth = dbh.prepare("select * from user")
	sth.execute

	sth.fetch do |row|
		printf "%5s %10s %5s %5s\n", row[0], row[1], row[2], row[3]
		
	end
	sth.finish
rescue DBI::DatabaseError => e
	puts "An error occured"
	puts "Error code: #{e.err}"
	puts "Error message: #{e.errstr}"
ensure
	dbh.disconnect if dbh
end