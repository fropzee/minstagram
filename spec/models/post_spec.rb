require 'rails_helper'

RSpec.describe Post, type: :model do
    it 'has_many' do
        should have_many :comments
    end

    it 'belongs_to' do
        should belong_to :user
    end
end