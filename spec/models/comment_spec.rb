require 'rails_helper'

RSpec.describe Comment, type: :model do
    it 'belongs_to' do
        should belong_to :user
    end
  
    it 'belongs_to' do
        should belong_to :post
    end

    it 'validates comment' do
        should validate_presence_of :comment
    end

    it 'validates comment' do
        should validate_presence_of :user_id
    end

    it 'validates comment' do
        should validate_presence_of :post_id
    end
end