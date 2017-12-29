class DiceGame
  def initialize
    puts "\n\n << Welcome to 'High Rollers' - The Dice Game to Decide Who Takes the Bin Out or Who Makes Tea >> \n\n"
    @player_1_score = 0
    @player_2_score = 0
  end

  def enter_name
    print "\nPlayer 1: What is your name? "
    @player_1 = gets.chomp.upcase
    print "\nPlayer 2: What is your name? "
    @player_2 = gets.chomp.upcase
  end

  def play_game
    until @player_1_score > 1 || @player_2_score > 1
      print "\n#{@player_1}: press enter to roll "
      response = gets.chomp
      @dice_roll_1 = rand(1..6)
      puts "\n#{@player_1}, your first roll is a #{@dice_roll_1}!"

      print "\n#{@player_1}: press enter to roll again "
      response = gets.chomp
      @dice_roll_2 = rand(1..6)
      puts "\nand your second roll is a #{@dice_roll_2}!\n"
      @player_1_result = @dice_roll_1 + @dice_roll_2
      puts "\n<< for a combined total of #{@player_1_result}! >>".upcase

      print "\n#{@player_2}: press enter to roll "
      response = gets.chomp
      @dice_roll_3 = rand(1..6)
      puts "\n#{@player_2}, your first roll is a #{@dice_roll_3}!"

      print "\n#{@player_2}: press enter to roll again "
      response = gets.chomp
      @dice_roll_4 = rand(1..6)
      puts "\nand your second roll is a #{@dice_roll_4}!\n"
      @player_2_result = @dice_roll_3 + @dice_roll_4
      puts "\n<< for a combined total of #{@player_2_result}! >>".upcase

      if @player_1_result > @player_2_result
        @player_1_score += 1
        puts "\n#{@player_1} wins this one!"
      elsif @player_1_result < @player_2_result
        @player_2_score += 1
        puts "\n#{@player_2} wins this one!"
      else
        puts "\nThe game is tied!"
      end
      puts "\nThe current score is #{@player_1}: #{@player_1_score} : #{@player_2}: #{@player_2_score}\n"
    end
    return match_result
  end

  def match_result
      if @player_1_score > 1
        puts "\nGame Over! #{@player_1} is the champ!"
      elsif @player_2_score > 1
        puts "\nGame Over! #{@player_2} is the champ!"
      else
        puts "\nWe have a close game on our hands here!"
      end
  end

  def final_score
    puts "\nThe final score is #{@player_1}: #{@player_1_score} : #{@player_2}: #{@player_2_score}\n"
  end
end

game_1 = DiceGame.new
game_1.enter_name
game_1.play_game
game_1.final_score
