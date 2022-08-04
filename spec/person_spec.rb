# Test the class person
require './person'

describe Person do
  context 'Test for the Person class' do
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
  end
end
