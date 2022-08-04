# frozen_string_literal: true

# Test the class person
require './person'

describe Person do
  context 'should have: age, name, parent_permission, access to use_services, specialization' do
    before(:context) do
      @person = Person.new(age: age, name: name, parent_permission: true, specialization: specialization,
                           can_use_services?: true)
    end

    it 'should be defined' do
      expect(@person).to be_a(Person)
    end

    it 'should be a student or a professor' do
      expect(@person.age).to eq(age)
      expect(@person.name).to eq(name)
      expect(@person.specialization).to eq(specialization)
      expect(@person.parent_permission).to eq(true)
      expect(@person.can_use_services?).to eq(true)
    end
  end
end
