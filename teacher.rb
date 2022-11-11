require './person'

class Teacher < Person
  def initialize(specialization, age, role = 'Teacher', name = 'Unknown')
    super(age, role, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
