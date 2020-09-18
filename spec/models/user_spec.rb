require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has_many' do
    should have_many :posts
  end
end