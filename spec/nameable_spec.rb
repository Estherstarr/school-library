# Test the class nameable
require './person'
require './nameable'

describe Nameable do
  context 'Test the class nameable, if it has a correct name, capitalize and trimmed' do
    age = 23
    name = 'John Doe'
    person = Person.new(age: age, name: name, parent_permission: false)
    it 'if it is right class name' do
      expect(person.class.name) == Person
    end
    it 'if it has right name, age and permission' do
      expect(person.age).to eq(age)
      expect(person.name).to eq(name)
    end
    it 'if it has right name, capitalize and trimmed' do
      expect(person.correct_name).to eq('John Doe')
    end
  end
end
