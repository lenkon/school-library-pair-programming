require_relative '../student'
describe Student do
  before :each do
    @student = Student.new 'Art', 15, 'Octavia', parent_permission: false
  end
  context '#new' do
    it 'takes three parameters and returns a Student object' do
      @student.should be_an_instance_of Student
    end
  end

  context 'test parameters' do
    it 'returns name' do
      expect(@student.name).to be == 'Octavia'
    end

    it 'returns age' do
      expect(@student.age).to be == 15
    end

    it 'returns classroom' do
      expect(@student.classroom).to be == 'Art'
    end
  end

  context 'test play_hooky functinality' do
    it 'returns happy face' do
      expect(@student.play_hooky).to be == '¯(ツ)/¯'
    end
  end
end
