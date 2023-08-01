require_relative '../book.rb'
describe Book do
    before :each do
        @book = Book.new "Title", "Author"
    end
    context "#new" do
         it "takes two parameters and returns a Book object" do
            @book.should be_an_instance_of Book
         end
    end
end