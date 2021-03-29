class Person
  attr_accessor :name
  # attr_reader :name
  # attr_writer :name
  def initialize(name)
    @name = name
  end

  # def name  ##Gets the @name
  #   @name
  # end

  # def name=(n)
  #   @name = n
  # end  


end


p = Person.new('L. Ron')
puts p.name
p.name = "New Name"
puts p.name