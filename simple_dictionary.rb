puts "\nHello.. I've just landed on Planet Earth and so far I have learnt 3 new things."
print "\nEnter 'bear', 'river', or 'salmon' to see what I have learnt: "
user_response = gets.chomp.downcase

simple_dictionary = {
  "bear" => "a creature that fishes in the river for salmon.",
  "river" => "a body of water that contains salmon, and sometimes bears.",
  "salmon" => "a fish, sometimes in a river, sometimes in a bear, and sometimes in both."
}

puts "\n#{user_response.capitalize}: #{simple_dictionary[user_response]}"
