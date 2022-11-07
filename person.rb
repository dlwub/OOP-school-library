class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(_age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1...10_000)
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
