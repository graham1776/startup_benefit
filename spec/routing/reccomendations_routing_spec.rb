require "rails_helper"

RSpec.describe ReccomendationsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/reccomendations").to route_to("reccomendations#index")
    end

    it "routes to #new" do
      expect(:get => "/reccomendations/new").to route_to("reccomendations#new")
    end

    it "routes to #show" do
      expect(:get => "/reccomendations/1").to route_to("reccomendations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/reccomendations/1/edit").to route_to("reccomendations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/reccomendations").to route_to("reccomendations#create")
    end

    it "routes to #update" do
      expect(:put => "/reccomendations/1").to route_to("reccomendations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/reccomendations/1").to route_to("reccomendations#destroy", :id => "1")
    end

  end
end
