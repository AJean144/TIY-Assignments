# Create a to_factorial method

# class Fixnum

# 	def to_fac
# 		if self == 0
# 		  self = 1
# 		else
# 		  self * (self - 1)
# 		end
# 	end
# end

# puts 4.to_fac

class Fixnum

	def fac_num
		if self == 1
			1
		elsif self == 2
			2 * 1
		elsif self == 3
			3 * 2 * 1
		elsif self == 4
			4 * 3 * 2 * 1
		else
		    5 * 4 * 3 * 2 * 1 		
		end
	end
end

puts 4.fac_num
