require_relative '../person'
require_relative '../book'

describe Person do
  before :each do
    @person = Person.new 17, 'Jon', parent_permission: false
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
      expect(@person.age).to be == 17
    end

    it 'returns parent permission' do
      expect(@person.parent_permission).to be false
    end
  end

  context 'test add rentals' do
    it 'has no rentals' do
      expect(@person.rentals.length).to be == 0
    end

    it 'has one rental' do
      book = Book.new 'Game of Thrones', 'George Martin'
      @person.add_rental('2021/01/01', book)
      expect(@person.rentals.length).to be == 1
    end
  end

  context 'test correct name' do
    it 'corrects name' do
      expect(@person.correct_name).to be == 'Jon'
    end
  end

  context 'test use services' do
    it 'can not use services' do
      expect(@person.can_use_services?).to be false
    end
  end
end
