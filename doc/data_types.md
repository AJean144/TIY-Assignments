ROR Day 1

Intigers-

	What does it mean? An intiger is a number

	How do you make one? The method is .to_i for example "12".to_i

	Why would you want one of those? The .to_i will change any numbered "string" into an actual number

	What can you do with an integer?

	#You can change a number in a string to an actual number

	"12".to_i #=> 12 

Strings-

	What does it mean? A string is a line of text wrapped in single or double quotes

	How do you make one? You can add .to_s to almost any object and convert it into a string, or place text inside two double/single quotation marks loke "Hello".

	Why would you want one of those? The .to_s will place an object into a string and it can be used for Concatenation

	What can you do with a string?

	#You can change an actual number into a string 

	kid_number = 3
	"I have " +kid_number+ " kid(s) and I am proud of them" #=> This would give an error but if I convert the variable kid_number to string with .to_s

	"I have " +kid_number.to_s+ " kid(s) and I am proud of them" #=> "I have 3 kid(s) and I am proud of them" it works!

Arrays-

	What does it mean? An array is a list of items in an ordered list

	How do you make one? nums = [1,2,3,4,5] "nums" is the name of the array and within opening and closing brackets, set your list separated with commas

	Why would you want one of those? You can use an array to create a list of things that you may want to put in order

	What can you do with an array?

	#You can create a list of your favorite books

	great_books = ['Genesis', 'Psalms', 'Daniel', 'Obadiah', 'St.John', 'Acts']

	#Then you can pull from that array using the index number starting from 0

	great_books[2] #=> "Daniel"

Hashes-

	What does it mean? A hash is collection of items without a specific order

	How do you make one? my_hash = {"name" => "Andell", "age" => 28 } create a name for the hash and within opening and closing curly braces you set a key like "name" and using an equel sign and a greater-than sign (called a hash rocket) you set the value "Andell"

	Why would you want one of those? You can use a hash to comprise a collection of items and assign key things to/about the item

	What can you do with a hash?

	#You can create a collection of items and assign specific things about them

	aboutAndell = {"name" => "Andell", "age" => 28 }

	#Now if you need to know my age you can just call it like this

	aboutAndell["age"] #=> 28

Range-
	What does it mean? It's a sequence of numbers or letters that has no gaps in it.

	How do you make one? (7..11) #contains 7, 8, 9, 10, and 11.

	Why would you want one of those? You could get every year since the Declaration of Independence was signed with (1776..2015). Or if you want every day in February, that could be represented as (1..28). You could even grab every letter of the alphabet with ('a'..'z').

	What can you do with a range?

	# You can find if something is inside a range:

	(1..10).include?(5) #=> true
	(1..10).include?(300) #=> false

	# You can find out how big it is:

	(1..10).size #=> 10
	(1776..2015).size #=> 240

	# You can iterate over it:

	(13..19).each{|n| print "#{n} " } #=> 13 14 15 16 17 18 19