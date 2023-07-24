class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

# alycia = Person.new(17,'Alycia', parent_permission: false)
# puts alycia.id
# puts alycia.name
# puts alycia.age
# puts alycia.can_use_services?
