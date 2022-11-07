require './person'

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown')
    super(specialization, age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
