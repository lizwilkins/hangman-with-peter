require 'spec_helper'

describe 'Game' do 
  context '#board' do 
    it 'shows a gallow for each player with no limbs' do
      players = [Player.new('Player 1'), Player.new('Player 2')]
      game = Game.new 
      game.board(players).should eq ["   ________________\n                   |\n" +
                                     "                   |\n                   |\n" +
                                     "                   |\n                   |\n" +
                                     "                   |\n                   |\n" +
                                     "                   |\n             ______|_____\n",
                                     "   ________________\n                   |\n" +
                                     "                   |\n                   |\n" +
                                     "                   |\n                   |\n" +
                                     "                   |\n                   |\n" +
                                     "                   |\n             ______|_____\n"]
    end
  end

  context '#over?' do 
    it 'tells us the game is not over' do 
      game = Game.new
      game.over?.should eq false
    end
  end

  context '#winner' do 
    it 'tells us Player 1 wins' do 
      players = [Player.new('Player 1'), Player.new('Player 2')]
      game = Game.new
      game.winner(players).name.should eq 'Player 1'
    end
  end
end