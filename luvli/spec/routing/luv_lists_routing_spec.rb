require "spec_helper"

describe LuvListsController do
  describe "routing" do

    it "routes to #index" do
      get("/luv_lists").should route_to("luv_lists#index")
    end

    it "routes to #new" do
      get("/luv_lists/new").should route_to("luv_lists#new")
    end

    it "routes to #show" do
      get("/luv_lists/1").should route_to("luv_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/luv_lists/1/edit").should route_to("luv_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/luv_lists").should route_to("luv_lists#create")
    end

    it "routes to #update" do
      put("/luv_lists/1").should route_to("luv_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/luv_lists/1").should route_to("luv_lists#destroy", :id => "1")
    end

  end
end
