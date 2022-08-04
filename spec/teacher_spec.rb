# Test if the teacher has correct name, age, specialization and have permission to rent a book.

require './teacher'

describe Teacher do
    context 'Test if the teacher class is defined' do
        age = 30
        name = 'Mathew Morgan'
        specialization = 'Math'
        teacher = Teacher.new(age: age, specialization: specialization, name: name)

        it 'should be defined' do
            expect(teacher).to be_a(Teacher)
        end

        it 'should have a correct age, name, specialization and parent_permission' do
            expect(teacher.age).to eq(age)
            expect(teacher.name).to eq(name)
            expect(teacher.specialization).to eq(specialization)
        end

        it 'if it can use services' do
            expect(teacher.can_use_services?).to eq(true)
        end
    end
end