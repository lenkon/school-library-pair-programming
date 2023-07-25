require "./decorator.rb"
require "./trimmer_decorator.rb"
require "./capitalize_decorator.rb"
require "./person.rb"
require "./teacher.rb"
require "./student.rb"
require "./classroom.rb"
require "./nameable.rb"


alycia = Student.new(17, "Alycia", parent_permission: true)
octavia = Student.new(16, "Octavia", parent_permission: false)
clarke = Student.new(16, "Clarke")
raven = Student.new(19, "Raven")
# puts alycia.classroom
math = Classroom.new("Math")
# puts math.students
# puts alycia.classroom
math.add_student(alycia)
# puts alycia.classroom
# puts alycia.classroom.label
# puts math.students
# puts octavia.classroom
math.add_student(octavia)
# puts octavia.classroom
# puts octavia.classroom.label
# puts math.students
# puts clarke.classroom
math.add_student(clarke)
# puts math.students
# puts clarke.classroom.label
# puts math.students.count
# puts math.students.first.name
# puts math.students.first.age
# puts raven.classroom
# puts math.students.count
raven.classroom = math
# puts raven.classroom
# puts math.students.count
# puts math.students.last
# puts math.students.last.name