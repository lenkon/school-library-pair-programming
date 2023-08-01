require_relative '../person'
describe Person do
  before :each do
    @person = Person.new 18, 'Jon', parent_permission: false
  end
  context '#new' do
    it 'takes three parameters and returns a Person object' do
      @person.should be_an_instance_of Person
    end
  end

  context 'test parameters' do
    it 'returns name' do
      expect(@person.name).to be == 'Jon'
    end

    it 'returns age' do
      expect(@person.age).to be == 18
    end

    it 'returns parent permission' do
      expect(@person.parent_permission).to be false
    end
  end
end
