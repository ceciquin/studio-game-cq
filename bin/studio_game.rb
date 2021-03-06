require_relative '../lib/studio_game/player'
require_relative '../lib/studio_game/game'
require_relative '../lib/studio_game/clumsy_player'
require_relative '../lib/studio_game/berserk_player'

#player1 = StudioGame::Player.new("moe")
#player2 = StudioGame::Player.new("larry", 60)
#player3 = StudioGame::Player.new("curly", 125)

game = StudioGame::Game.new("Knuckleheads")
default_player_file = File.join(File.dirname(__FILE__), 'players.csv')
game.load_players(ARGV.shift || default_player_file)

# knuckleheads.add_player(player3)
# knuckleheads.add_player(player2)
# knuckleheads.add_player(player1)

klutz = ClumsyPlayer.new("klutz", 105)
game.add_player(klutz)

berserker = BerserkPlayer.new("berserker", 50)
game.add_player(berserker)

loop do
  puts "\nHow many game rounds? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    game.play(answer.to_i)
  when 'quit', 'exit'
    game.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

game.save_high_scores
