#!/home/thien/rubyExercise

=begin
Exercise1
Khởi tạo một mảng bất kỳ trên 10 phần tử, sắp xếp mảng theo thứ tự tăng dần. 
In tất cả các phần tử ra theo thứ tự giảm dần. 
Nhập vào một số bất kỳ, in ra xem số đó có thuộc mảng k.
=end
=begin

arr = Array.new(15) {|e| e = Random.rand(20)}
arr.sort!
arr.reverse!
p arr

print "Input a number : "
num = gets.to_i

if arr.include?(num)
	print num, " co trong mang ngau nhien tren."
else print num, " khong co trong mang ngau nhien tren.\n"
end
=end

=begin
Exercise 2
cho đoạn code ruby như sau:
	x=[2,4,5,6,8,12,7,12,15]
	y=[4,5,2,9,6,14,78,9,2]
	puts "Nhap toa do diem o:"
	puts "nhap x:"
	$xx= gets.chomp.to_i
	puts "nhap y:"
	$yy= gets.chomp.to_i
	i=x.length-1
	for i in (0..i)
		r=Math.sqrt(($xx-x[i])*($xx-x[i])+($yy-y[i])*($yy-y[i]))
		if r<=5
			puts "[#{x[i]},#{y[i]}]"
		end
		puts r
	end

Hãy viết tên bài tập chính xác cho đoạn code trên.
=end
# Hãy nhập tọa độ một điểm và tìm tất cả các điểm trong mảng đã cho cách điểm đấy một khoảng không lớn hơn 5 

=begin
Exercise 3
Tạo ra 1 class PhanSo có các thuộc tính là tử số, mẫu số (PhanSo chứa 2 phấn số). 
Viết các phương thuwwucs hiển thị, cộng, trù, nhân, chia của Class PhanSo. 
Chương trình nhập tử số 1, mẫu số 1, tử số 2, mẫu số 2 rồi thực hiện các hàm đã viết.
=end
class Fraction
	attr_accessor :numerator,:denominator
	def initialize(numerator, denominator)
		@numerator = numerator
		@denominator = denominator
	end
	def Fraction.UCLN(num1,num2)
		if num1 < 0 
			num1 = num1 * (-1)
		end
		if num2 < 0 
			num2 = num2 * (-1)
		end
		if num1 == num2 
				return num1
			end
		while num1 != num2
			
			if num1 > num2
				return Fraction.UCLN(num1 - num2, num2)
			else 
				return Fraction.UCLN(num1, num2 - num1)
			end
		end
	end

	def add(fraction)
		kq = Fraction.new(1,1)
		if @denominator == fraction.denominator
			kq.numerator = @numerator + fraction.numerator
			kq.denominator = @denominator
		else
			kq.numerator = @numerator * fraction.denominator + fraction.numerator * @denominator
			kq.denominator = @denominator * fraction.denominator
		end
		if Fraction.UCLN(kq.numerator,kq.denominator) != 1
			uc = Fraction.UCLN(kq.numerator, kq.denominator)
    		kq.numerator /= uc
    		kq.denominator /= uc
		end
		return kq
    end

    def minus(fraction)
    	kq = Fraction.new(1,1)
    	if @denominator == fraction.denominator
    		kq.numerator = @numerator - fraction.numerator
    		kq.denominator = @denominator
    	else 
    		kq.numerator = @numerator * fraction.denominator - fraction.numerator * @denominator
    		kq.denominator = @denominator * fraction.denominator
    	end

    	if Fraction.UCLN(kq.numerator, kq.denominator) != 1
    		uc = Fraction.UCLN(kq.numerator, kq.denominator)
    		kq.numerator /= uc
    		kq.denominator /= uc
    	end
    	return kq
    end

    def multi(fraction)
    	kq = Fraction.new(1,1)
    	kq.numerator = @numerator * fraction.numerator
    	kq.denominator = @denominator * fraction.denominator
    	if Fraction.UCLN(kq.numerator, kq.denominator) != 1
    		uc = Fraction.UCLN(kq.numerator, kq.denominator)
    		kq.numerator /= uc
    		kq.denominator /= uc
    	end
    	return kq
    end

    def divide(fraction)
    	kq = Fraction.new(1,1)
    	kq.numerator = @numerator * fraction.denominator
    	kq.denominator = @denominator * fraction.numerator
    	if Fraction.UCLN(kq.numerator, kq.denominator) != 1
    		uc = Fraction.UCLN(kq.numerator, kq.denominator)
    		kq.numerator /= uc
    		kq.denominator /= uc
    	end
    	return kq
    end

end
print " Input first Numerator : "
numerator1 = gets.to_i
print "\n Input first Denominator : "
denominator1 = gets.to_i
while denominator1 == 0
	print "\n Denominator of Fraction cannot be zero !"
	print "\n Input first Denominator again : "
	denominator1 = gets.to_i
end
print "\n Input second Numerator : "
numerator2 = gets.to_i
print "\n Input second Denominator2 : "
denominator2 = gets.to_i
while denominator2 == 0
	print "\n Denominator of Fraction cannot be zero !"
	print "\n Input first Denominator again : "
	denominator2 = gets.to_i
end
 
f1 = Fraction.new(numerator1,denominator1)
f2 = Fraction.new(numerator2,denominator2)
f3 = Fraction.new(1,1)

f3 = f2.add(f1)
print "\n Addition of 2 above fraction "
if f3.denominator == 1
	print f3.numerator, "\n"
else 
	print f3.numerator,"/",f3.denominator, "\n"
end
f3 = f1.minus(f2)
print "\n The Subtraction of 2 above fraction : "
if f3.denominator == 1
	print f3.numerator, "\n"
else 
	print f3.numerator, "/", f3.denominator, "\n"
end
f3 = f2.multi(f1)
print "\n The Multiplication of 2 above fraction : "
if f3.denominator == 1
	print f3.numerator, "\n"
else 
	print f3.numerator, "/", f3.denominator, "\n"
end
f3 = f1.divide(f2)
print "\n The Division of 2 above fraction : "
if f3.denominator == 1
	print f3.numerator, "\n"
else 
	print f3.numerator,"/",f3.denominator,"\n"
end