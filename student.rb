require './person'

class Student < Person
<<<<<<< HEAD
  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(name, age, parent_permission)
=======
  def initialize(classroom, age, name = 'Unknown', parent_permission = true)
    super(name, age, parent_permission = true)
>>>>>>> 10c2172d10e61041941cc5ce017b518f7a93a61e
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

end
