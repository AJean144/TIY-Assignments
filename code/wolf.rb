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

class Wolf

	attr_accessor :name,  :age

	def initialize(name, age)
		@name = name
		@age = age
	end
	def howl
		"Hoooowwwlll!"
	end
	def dominant_to?(younger_wolf)
		true
	end
end