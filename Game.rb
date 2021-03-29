require './Question'
require './Players'

class Game
  def initialize
    @p1 = Player.new('Player 1')
    @p2 = Player.new('Player 2')
  end

  def round(player)
    q = Question.new(player.name)
    bool = q.ask
    if bool != true
      player.reduceScore
    end
  end

  def play
    turn = @p1
    loop do
      round(turn);
      puts "P1 #{@p1.score}/3 vs P2: #{@p2.score}/3"
      if @p1.score == 0 || @p2.score == 0
        @p1.score == 0 ? winner = @p2 : winner = @p1
        puts "#{winner.name} wins with a score of #{winner.score}/3"
        puts '----- GAME OVER -----'
        puts 'Good bye'
        break
      end
      turn == @p1? turn = @p2 : turn = @p1;
      puts '----- NEW TURN -----'
    end
  end
end
