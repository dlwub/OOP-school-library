class Person
  attr_reader:id
  attr_accessor: name
  attr_accessor: age

  def initialize(name = "Unknown", age, parent_permission=true)
    @id = Random.rand(1...10000)
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_services?
    self.is_of_age? || self.parent_permission
  end

  private
  def is_of_age?
    age > 18 ? true: false
  end
end