require 'rails_helper'

RSpec.describe UsersController, :type => :routing do
    describe "routing" do
        it "routes to #profile" do
            expect(:get => "/profile/garnett").to route_to("users#profile", :username => "garnett")
        end

        it "routes to #feeds" do
            expect(:get => "/feeds").to route_to("users#index")
        end
    end
end