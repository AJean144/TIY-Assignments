# Select every team from the NFC North
Team.where(conference: "NFC")

# Select every team with at least 11 wins 
Team.where(wins: (1..11))

# Select every team with at least 8 wins that did not make the playoffs

