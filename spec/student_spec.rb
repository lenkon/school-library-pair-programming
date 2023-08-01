require_relative '../student'
describe Student do
  before :each do
    @student = Student.new 'Art', 15, 'Student', parent_permission: false
  end
  context '#new' do
    it 'takes three parameters and returns a Student object' do
      @student.should be_an_instance_of Student
    end
  end
end
