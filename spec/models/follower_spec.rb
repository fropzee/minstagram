require 'rails_helper'

RSpec.describe Follower, type: :model do
    context "uniqueness" do
        it "validate uniqueness of" do
            should validate_uniqueness_of(:follower_id).scoped_to(:following_id) 
        end
    end
end