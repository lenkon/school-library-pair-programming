require_relative '../book'
require_relative '../student'
describe Book do
  before :each do
    @book = Book.new 'Game of Thrones', 'George Martin'
  end
  context '#new' do
    it 'takes two parameters and returns a Book object' do
      @book.should be_an_instance_of Book
    end
  end

  context 'test parameters' do
    it 'returns title' do
      expect(@book.title).to be == 'Game of Thrones'
    end

    it 'returns author' do
      expect(@book.author).to be == 'George Martin'
    end
  end

  context 'test add rentals' do
    it 'has no rentals' do
      expect(@book.rentals.length).to be == 0
    end

    it 'has one rental' do
      student = Student.new 15, 'Lexa', false
      @book.add_rental('2021/01/01', student)
      expect(@book.rentals.length).to be == 1
    end
  end
end
