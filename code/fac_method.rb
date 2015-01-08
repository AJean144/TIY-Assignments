# Create a to_factorial method


class Fixnum

	def to_fac
		if self == 0
			1 
		else
			self * (self - 1).to_fac
		end
	end
end

puts 12.to_fac #=> 479001600
