# A wolfpack is a group of wolves. A wolf has a name and an age. The leader of the wolfpack is the oldest wolf.
# All wolves are submissive to older wolves and dominant over younger wolves.

# A wolf can join a pack. If a wolf joins a pack and becomes leader, the pack throws out the former leader.

# A wolf can howl. It howls louder if it's older than 3 than if it's younger.
# If you call out the name of a wolf to its pack, that wolf will howl.

# A wolfpack can take down different sized things depending on how big it is.

# A pack of 2 wolves can hunt a gazelle.
# A pack of 5 wolves can get a water buffalo.
# A pack of 30 wolves can eat a rhinoceros.
# I used a lot of synonyms there in the hunting section. You don't need methods for all of them.

require 'minitest/autorun'
require 'minitest/pride'
#require 'minitest/pride'
require './wolf'

class TestWolf < MiniTest::Unit::TestCase

	def setup
		@wolf = Wolf.new(:Jake, 17)
	end

	def test_if_wolf_exsist
		assert @wolf	
	end

	def test_wolf_name
		assert_equal :Jake, @wolf.name
	end

	def test_wolf_age
		assert_equal 17, @wolf.age
	end

	def test_wolf_howl
		assert_equal "Hoooowwwlll!", @wolf.howl
	end

	def test_if_wolf_is_dominant_over_younger_wolves
		@young_wolf = Wolf.new(:Gary, 12)
		assert @wolf.dominant_to?(@young_wolf)
	end
end