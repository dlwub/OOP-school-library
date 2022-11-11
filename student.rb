require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, role = 'Student', classroom = '', name = 'Unknown', parent_permission = true)
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
