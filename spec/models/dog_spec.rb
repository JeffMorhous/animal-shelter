require 'rails_helper'

RSpec.describe Dog, type: :model do
  describe '#days_in_shelter' do
    it 'returns the number of days the dog has been in the shelter' do
      arrival_date = 10.days.ago
      dog = Dog.create(name: 'Buddy', arrival_date: arrival_date)
      expect(dog.days_in_shelter).to eq(9)
    end
  end
end