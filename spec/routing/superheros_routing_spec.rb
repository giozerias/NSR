require "spec_helper"

describe SuperherosController do
  describe "routing" do

    it "routes to #index" do
      get("/superheros").should route_to("superheros#index")
    end

    it "routes to #new" do
      get("/superheros/new").should route_to("superheros#new")
    end

    it "routes to #show" do
      get("/superheros/1").should route_to("superheros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/superheros/1/edit").should route_to("superheros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/superheros").should route_to("superheros#create")
    end

    it "routes to #update" do
      put("/superheros/1").should route_to("superheros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/superheros/1").should route_to("superheros#destroy", :id => "1")
    end

  end
end
