require './Question'
require './Players'

class Game
  def initialize
    @p1 = Player.new('Player 1')
    @p2 = Player.new('Player 2')
  end

  def round
    q1 = Question.new(@p1.name)
    bool = q1.ask
    if bool != true
      @p1.reduceScore
    end
    puts "P1 #{@p1.score}/3 vs P2: #{@p2.score}/3"
    q2 = Question.new(@p2.name)
    bool2 = q2.ask
    if bool2 != true
      @p2.reduceScore
    end
    puts "P1 #{@p1.score}/3 vs P2: #{@p2.score}/3"
  end

  def play
    loop do
      round
      if @p1.score == 0 || @p2.score == 0
        puts 'Player wins with a score'
        puts '----- GAME OVER -----'
        break
      end
      puts '----- NEW TURN -----'
    end
  end
end

g = Game.new
g.play