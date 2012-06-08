require "spec_helper"

describe ScorelinesController do
  describe "routing" do

    it "routes to #index" do
      get("/scorelines").should route_to("scorelines#index")
    end

    it "routes to #new" do
      get("/scorelines/new").should route_to("scorelines#new")
    end

    it "routes to #show" do
      get("/scorelines/1").should route_to("scorelines#show", :id => "1")
    end

    it "routes to #edit" do
      get("/scorelines/1/edit").should route_to("scorelines#edit", :id => "1")
    end

    it "routes to #create" do
      post("/scorelines").should route_to("scorelines#create")
    end

    it "routes to #update" do
      put("/scorelines/1").should route_to("scorelines#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/scorelines/1").should route_to("scorelines#destroy", :id => "1")
    end

  end
end
