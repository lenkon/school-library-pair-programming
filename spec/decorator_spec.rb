require_relative '../decorator'
require_relative '../capitalize_decorator'
require_relative '../trimmer_decorator'
require_relative '../student'

describe Decorator do
  before :each do
    @student = Student.new 'Art', 15, 'christopher', parent_permission: false
  end
  it 'correctly capitalize name' do
    decorator = CapitalizeDecorator.new(@student)
    expect(decorator.correct_name).to eq('Christopher')
  end

  it 'correctly trim name' do
    decorator = TrimmerDecorator.new(@student)
    expect(decorator.correct_name).to eq('christophe')
  end
end
