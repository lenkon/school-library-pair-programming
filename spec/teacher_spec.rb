require_relative '../teacher'
describe Teacher do
  before :each do
    @teacher = Teacher.new 'Art', 35, 'Teacher'
  end
  context '#new' do
    it 'takes three parameters and returns a Teacher object' do
      @teacher.should be_an_instance_of Teacher
    end
  end
end
