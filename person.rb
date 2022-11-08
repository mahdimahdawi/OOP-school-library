class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  # Getter for id
  attr_reader :id

  # Getter and Setter for
  attr_accessor :name, :age

  def can_use_services?
    return true if @parent_permission || is_of_age?
  end

  private

  def of_age?
    @age >= 18
  end
end
