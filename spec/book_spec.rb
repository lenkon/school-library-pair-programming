require_relative '../book'
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
end
