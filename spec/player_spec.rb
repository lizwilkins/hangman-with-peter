require 'spec_helper'

describe 'Player' do 
  context '#name' do
    it 'gives us a players name' do
      player = Player.new('Player 1')
      player.name.should eq 'Player 1'
    end
  end

  context '#set_word' do
    it 'sets a players word' do
      player = Player.new('Player 1')
      player.set_word('cowboy')
      player.word.should eq 'cowboy'
    end
  end

  context '#add_letter' do
    it 'adds the letter "c" to the new word' do
      players = [Player.new('Player 1'), Player.new('Player 1')]
      players[1].set_word('cowboy')
      players[0].add_letter((players[1]), 'c').should eq ["c", "-", "-", "-", "-", "-"]
    end
 
    it 'adds the letter "c" to the new word' do
      players = [Player.new('Player 1'), Player.new('Player 1')]
      players[1].set_word('cowboy')

      players[0].add_letter((players[1]), 'c')

      players[0].add_letter((players[1]), 'o').should eq ["c", "o", "-", "-", "o", "-"]
    end
  end

  context '#add_body_part' do
    it 'adds a segement to the hangman we are making' do
      player = Player.new('Player 1')
      player.add_body_part.should eq "   ________________\n   /               |\n                   |\n                   |\n                   |\n                   |\n                   |\n                   |\n                   |\n             ______|_____\n".split("")
    end
  end


   context '#letter_valid' do 
    it 'tells us if the letter guessed is in the word' do 
      player = Player.new('Player 1')
      player.letter_valid('h').should eq false
    end
  end

  context '#letter_valid' do 
    it 'tells us if the letter "w" is in the word "cowboy"' do 
      player = Player.new('Player 1')
      player.set_word('cowboy')
      player.letter_valid('w').should eq true
    end
  end

  context '#add_letter_to_miss_list' do
    it 'adds the letter "e" to empty string' do
      player = Player.new('Player 1')
      player.add_letter_to_miss_list('e').should eq 'e'
    end
  end

  # context '#remove_body_part' do
  #   it 'removes a segement of the hangman we are making' do
  #     player = Player.new('Player 1')
  #     player.remove_body_part.should eq '--'
  #   end
  # end  

end