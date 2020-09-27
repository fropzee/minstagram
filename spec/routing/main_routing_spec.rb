require 'rails_helper'

RSpec.describe MainController, :type => :routing do
    describe "routing" do
        it "routes to #home" do
            expect(:get => "/").to route_to("main#home")
        end
    end
end