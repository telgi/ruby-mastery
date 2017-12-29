def angry_greeter
  print "Hey there, what's your name? "
  user_response = gets.chomp
  return puts user_response.upcase if user_response[0].capitalize.include?('S')
  return puts "Hey #{user_response}, you look cool.. Let's be friends!"
end

angry_greeter 
