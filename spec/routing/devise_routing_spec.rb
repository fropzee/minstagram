require 'rails_helper'

RSpec.describe DeviseController, :type => :routing do
    describe "routing" do
        

        it "routes to new user session" do
            expect(:get => "/users/sign_in").to route_to("devise/sessions#new")
        end

        it "routes to user session" do
            expect(:post => "/users/sign_in").to route_to("devise/sessions#create")
        end

        it "routes to destroy user session" do
            expect(:get => "/users/sign_out").to route_to("devise/sessions#destroy")
        end

        it "routes to new user password" do
            expect(:get => "/users/password/new").to route_to('devise/passwords#new')
        end

        it "routes to edit user password" do
            expect(:get => "/users/password/edit").to route_to('devise/passwords#edit')
        end

        it "routes to user password" do
            expect(:patch => "/users/password").to route_to('devise/passwords#update')
        end

        it "routes to user password" do
            expect(:put => "/users/password").to route_to('devise/passwords#update')
        end

        it "routes to user password" do
            expect(:post => "/users/password").to route_to('devise/passwords#create')
        end

        it "routes to cancel user registration" do
            expect(:get => "/users/cancel").to route_to('devise/registrations#cancel')
        end
        
        it "routes to new user registration" do
            expect(:get => "/users/sign_up").to route_to('devise/registrations#new')
        end

        it "routes to edit user registration" do
            expect(:get => "/users/edit").to route_to('devise/registrations#edit')
        end

        it "routes to user registration" do
            expect(:patch => "/users").to route_to('devise/registrations#update')
        end

        it "routes to user registration" do
            expect(:put => "/users").to route_to('devise/registrations#update')
        end

        it "routes to user registration" do
            expect(:delete => "/users").to route_to('devise/registrations#destroy')
        end

        it "routes to user registration" do
            expect(:post => "/users").to route_to('devise/registrations#create')
        end
    end
end