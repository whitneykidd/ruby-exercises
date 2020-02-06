class Wizard
  attr_reader :name, :bearded, :spell_count
  def initialize(name, bearded={:bearded => true})
    @name = name
    @bearded = bearded
    @spell_count = 0
  end

  def bearded?
    @bearded.value?(true)
  end

  def incantation(power)
    p "sudo #{power}"
  end

  def rested?
    if @spell_count == 3
      false
    else
      true
    end

  end

  def cast
    @spell_count += 1
    p "MAGIC MISSILE!"
  end
end
