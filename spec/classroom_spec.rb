# Test if the classroom class is defined
require './classroom'

describe Classroom do
  context 'Test if the classroom class is defined' do
    label = '1A'
    classroom = Classroom.new(label)

    it 'should be defined' do
      expect(classroom).to be_a(Classroom)
    end

    it 'should have a correct label' do
      expect(classroom.label).to eq(label)
    end

    it 'should have an empty students array' do
      expect(classroom.students).to be_empty
    end

    it 'should be able to add students' do
      student = Student.new(18, '1A', 'John Doe', true)
      classroom.add_student(student)
      expect(classroom.students).to include(student)
    end
  end
end
