require './person'
class Student < Person
  def initialize(classroom, age, name, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

lexa = Student.new('Math', 21, 'Lexa')
puts lexa.id
puts lexa.name
puts lexa.age
puts lexa.can_use_services?
puts lexa.play_hooky
