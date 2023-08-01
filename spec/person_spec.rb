require_relative '../person'
describe Person do
  before :each do
    @person = Person.new 18, 'Person', parent_permission: false
  end
  context '#new' do
    it 'takes three parameters and returns a Person object' do
      @person.should be_an_instance_of Person
    end
  end
end
