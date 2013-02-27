class Game

  def initialize
  end

  def board(players)
    players.map { |player| "#{player.gallows}" }
  end

  def over?
    false
  end

  def winner(players)
    players[0]
  end

end