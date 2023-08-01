require_relative '../classroom.rb'
describe Classroom do
    before :each do
        @classroom = Classroom.new "Art"
    end
    context "#new" do
         it "takes one parameter and returns a Classroom object" do
            @classroom.should be_an_instance_of Classroom
         end
    end
end
