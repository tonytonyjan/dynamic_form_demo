require "spec_helper"

describe Admin::AttendeesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/attendees").should route_to("admin/attendees#index")
    end

    it "routes to #new" do
      get("/admin/attendees/new").should route_to("admin/attendees#new")
    end

    it "routes to #show" do
      get("/admin/attendees/1").should route_to("admin/attendees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/attendees/1/edit").should route_to("admin/attendees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/attendees").should route_to("admin/attendees#create")
    end

    it "routes to #update" do
      put("/admin/attendees/1").should route_to("admin/attendees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/attendees/1").should route_to("admin/attendees#destroy", :id => "1")
    end

  end
end
