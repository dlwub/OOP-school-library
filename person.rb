require './nameable'

class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :name, :age, :role

  def initialize(age, role, name = 'Unknown', parent_permission = true) # rubocop:disable Style/OptionalBooleanParameter
    @id = Random.rand(1..1000)
    super()
    @id = Random.rand(1...10_000)
    @role = role
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  def correct_name
    @name
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
