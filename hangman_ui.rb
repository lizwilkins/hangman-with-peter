require 'spec_helper'


puts "Welcome to Hangman"

players = [Player.new('Player 1'), Player.new('Player 2')]
#display two blank gallows for each player
game.board(players)
players.each do |player|
  "#{player.name}, please give us a word."
  word = gets.chomp
end

until game.over? || game.winnner
  game.board(players)
  players.each do |player|
    "#{player.name}, please guess a letter."
    letter = gets.chomp
    if player.letter_valid(letter)
      player.add_letter(letter)
      player.add_body_part(part)
    else
      player.remove_body_part(part)
      player.add_letter_to_miss_list(letter)
    end
    break if game.over? || game.winner
  end
  if game.winner
    "#{game.winner.name}, you WIN!."
  else
    "Tie Game!"
  end
end
