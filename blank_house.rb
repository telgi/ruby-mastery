
def blank_house
  banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]
  print "What would you like to tweet?\n\n> "
  tweet = gets.chomp

  index = 0
  while index < banned_phrases.length
    if tweet.include?(banned_phrases[index]) == true
       tweet.gsub!(banned_phrases[index],"CENSORED")
    end
    index += 1
  end

  puts "\n\nYou have tweeted: " + tweet
  if tweet.include?("CENSORED") == true
    puts "\n\nHey! What did you just type?! You are now under surveillance..."
  end
end

blank_house
