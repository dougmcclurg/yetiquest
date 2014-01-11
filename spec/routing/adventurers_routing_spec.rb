require "spec_helper"

describe AdventurersController do
  describe "routing" do

    it "routes to #index" do
      get("/adventurers").should route_to("adventurers#index")
    end

    it "routes to #new" do
      get("/adventurers/new").should route_to("adventurers#new")
    end

    it "routes to #show" do
      get("/adventurers/1").should route_to("adventurers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/adventurers/1/edit").should route_to("adventurers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/adventurers").should route_to("adventurers#create")
    end

    it "routes to #update" do
      put("/adventurers/1").should route_to("adventurers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/adventurers/1").should route_to("adventurers#destroy", :id => "1")
    end

  end
end
