# Group the array of hashes below into a hash, where each key of the hash is a
# sport, and each value of the hash is a list of names of people who play that sport.

players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

players_by_sport = {} # create new hash

# create loop to iterate through players and grab value of each :sport key

players.each do |player|
  sport = player[:sport]

  # create conditional to convert nil values into empty values

  if players_by_sport[sport] == nil
    players_by_sport[sport] = []
  end

    # within same block, push remaining :name values into hash as arrays contained by :sport keys 

    players_by_sport[sport].push(player[:name])
end

# call new hash to print contents

puts players_by_sport
