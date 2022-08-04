# Test if the classroom class is defined
require './classroom'

describe Classroom do
  context 'Test if the classroom class is defined' do
    label = '1A'
    classroom = Classroom.new(label: label)
    it 'should be defined' do
      expect(classroom).to be_a(Classroom)
    end
  end
end
