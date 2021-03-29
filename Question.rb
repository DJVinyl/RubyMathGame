class Question
  attr_reader :question
  attr_writer :answer
  def initialize(name)
    @firstNumber = rand(6);
    @secondNumber = rand(6);
    @question = "#{name}: What is #{@firstNumber} + #{@secondNumber}"
    @answer = @firstNumber + @secondNumber
    @name = name;
  end

  def getQuestion
    puts @question
  end

  def getUserAnswer
    userAnswer = gets.chomp
    # Edge case for testing, check user Input isn't breaking the code
  end

  def compareAnswers
    input = getUserAnswer;
    if input.to_i == @answer
      puts "#{@name}: YES! You are correct."
      return true
    else
      puts "#{@name}: Seriously? No!"
      return false 
    end
  end

  def ask
    getQuestion
    compareAnswers
  end
end
