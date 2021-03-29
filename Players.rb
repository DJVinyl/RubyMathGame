class Player
  attr_accessor :name, :score
  def initialize(name)
    @name = name
    @score = 3;
  end

  def reduceScore()
    @score -= 1
  end

  def currentScore()
    puts @score.to_s + "/3"
  end

end


