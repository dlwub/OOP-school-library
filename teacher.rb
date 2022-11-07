require "./person"

class Teacher < Person
  def initialize(specialization, name = 'Unknown', age)
    super(specialization, name = 'Unknown', age)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
