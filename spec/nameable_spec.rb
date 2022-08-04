# Test the class nameable
require './person'
require './nameable'

describe Nameable do
  context 'Test the class nameable, if it has a correct name, capitalize and trimmed' do
    person = Person.new(age: age, name: name, parent_permission: true, specialization: specialization,
                        can_use_services?: true)
    person.correct_name
    capitalize_trimmed_person = CapitalizeDecorator.new(trimmed_person)
    @correct_name_trimmed = capitalize_trimmed_person.correct_name

    it 'should be defined' do
      expect(person).to be_a(Nameable)
    end

    it 'If it is an instance of class' do
      expect(@nameable).to be_instance_of(Nameable)
    end

    it 'should have a correct name, capitalize and trimmed' do
      expect(@correct_name).to eq('John Doe')
      expect(@correct_name_trimmed).to eq('John Doe')
    end

    it 'If it has a name' do
      expect(@nameable.name).to eq('John Doe')
    end
  end
end
