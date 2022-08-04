# # Writing test for the student class
require './student'
require './classroom'

describe Student do
  context 'Test if the student class is defined' do
    age = 18
    name = 'John Doe'
    classroom = '1A'
    parent_permission = true
    student = Student.new(age: age, name: name, classroom: classroom, parent_permission: parent_permission)

    it 'should be defined' do
      expect(student).to be_a(Student)
    end

    it 'should have a correct age, name, classroom and parent_permission' do
      expect(student.age).to eq(age)
      expect(student.name).to eq(name)
      expect(student.classroom).to eq(classroom)
      expect(student.parent_permission).to eq(parent_permission)
    end

    it 'if it plays hooky' do
      expect(student.play_hooky).to eq('¯\(ツ)/¯')
    end
  end
end
