require './person'
class Teacher < Person
  def initialize(specialization, age, name)
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

jon = Teacher.new('English', 30, 'Jon')
puts jon.id
puts jon.name
puts jon.age
puts jon.can_use_services?
