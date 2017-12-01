require "rails_helper"

RSpec.describe LitCasesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lit_cases").to route_to("lit_cases#index")
    end

    it "routes to #new" do
      expect(:get => "/lit_cases/new").to route_to("lit_cases#new")
    end

    it "routes to #show" do
      expect(:get => "/lit_cases/1").to route_to("lit_cases#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lit_cases/1/edit").to route_to("lit_cases#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lit_cases").to route_to("lit_cases#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lit_cases/1").to route_to("lit_cases#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lit_cases/1").to route_to("lit_cases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lit_cases/1").to route_to("lit_cases#destroy", :id => "1")
    end

  end
end
