require_relative '../teacher'
describe Teacher do
  before :each do
    @teacher = Teacher.new 'Art', 35, 'Jack'
  end
  context '#new' do
    it 'takes three parameters and returns a Teacher object' do
      @teacher.should be_an_instance_of Teacher
    end
  end

  context 'test parameters' do
    it 'returns name' do
      expect(@teacher.name).to be == 'Jack'
    end

    it 'returns age' do
      expect(@teacher.age).to be == 35
    end

    it 'returns specialization' do
      expect(@teacher.specialization).to be == 'Art'
    end
  end

  context 'test use services' do
    it 'can use services' do
      expect(@teacher.can_use_services?).to be true
    end
  end
end
