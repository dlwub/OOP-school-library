require './person'

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown')
    super(specialization, name, age)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
