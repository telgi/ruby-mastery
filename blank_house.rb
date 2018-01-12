=begin

I'm a client working for the Blank House. We want to display positive tweets
about our president on our website. However, our president is kind of unpopular,
and we pretty much only receive negative press. Write me a program that filters
out the following words from tweets: "sucks", "bad", "hate", "foolish", and the
most popular: "danger to society". Replace each negative word or phrase them with
the word "CENSORED". Some test tweets have been provided for you.

=end

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
