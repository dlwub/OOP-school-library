require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, role = 'Student', name = 'Unknown', parent_permission = true) # rubocop:disable Style/OptionalBooleanParameter
    @id = Random.rand(1..1000)
    super(age, role, name, parent_permission)
    @classroom = classroom
  end

  def class_room=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.includes?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
