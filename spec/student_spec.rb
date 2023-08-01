require_relative '../student.rb'
describe Student do
    before :each do
        @student = Student.new 15, "Student", false
    end
    context "#new" do
         it "takes three parameters and returns a Student object" do
            @student.should be_an_instance_of Student
         end
    end
end