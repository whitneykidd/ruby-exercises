class Medusa
  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    statues.unshift(person)
    person.stoned = true
    if @statues.count > 3
      temp = statues.pop
      temp.stoned = false
    end
  end
end
