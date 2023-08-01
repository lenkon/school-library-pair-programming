require_relative '../classroom'
require_relative '../student'

describe Classroom do
  before :each do
    @classroom = Classroom.new 'Art'
  end
  context '#new' do
    it 'takes one parameter and returns a Classroom object' do
      @classroom.should be_an_instance_of Classroom
    end
  end

  context 'test add student to a classroom' do
    it 'has no students' do
      expect(@classroom.students.length).to be == 0
    end

    it 'has one student' do
      student = Student.new 15, 'Lexa', false
      @classroom.add_student(student)
      expect(@classroom.students.length).to be == 1
    end
  end
end
