puts "\n<< Welcome to my adventure game... You are currently facing forward >>\n
You can press 'forward', 'left', or 'right'."

def adventure_game

  forward = 0

  until forward == 2
    print "\nWhich direction would you like to go? "
    user_input = gets.chomp

    case user_input
    when 'right'
      puts "\nOh crap, it's a goblin! You dead.."
      break
    when 'left'
      puts "\nWhat the hell, it's a werewolf! You dead.."
      break
    when 'forward'
      forward += 1
      puts "\nPhew! Not a scary monster in sight!"
    else
      puts "\nPlease type 'forward', 'left', or 'right'."
    end
    if forward == 2
      puts "\nCongratulations! You made it out alive!"
    end
  end
end

adventure_game
