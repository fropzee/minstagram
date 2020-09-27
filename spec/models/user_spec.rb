require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has_many' do
    should have_many :posts
  end

  it 'full name' do
    user = User.new(first_name: "Ivan", last_name: "Ivanov")
    expect(user.full_name).to eq "Ivan Ivanov"
  end
end