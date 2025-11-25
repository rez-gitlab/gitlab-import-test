# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:email) }
  end

  describe '#full_name' do
    it 'returns the name' do
      user = User.new(name: 'John Doe')
      expect(user.full_name).to eq('John Doe')
    end
  end
end
