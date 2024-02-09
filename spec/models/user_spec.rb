require 'rails_helper'

RSpec.describe User, type: :model do
  context 'with valid attributes' do
    it 'is valid' do
      user = User.new(name: 'John', email: 'john@email.com')
      expect(user).to be_valid
    end
  end
end
