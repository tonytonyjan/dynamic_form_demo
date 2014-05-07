require "spec_helper"

describe Admin::FormsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/forms").should route_to("admin/forms#index")
    end

    it "routes to #new" do
      get("/admin/forms/new").should route_to("admin/forms#new")
    end

    it "routes to #show" do
      get("/admin/forms/1").should route_to("admin/forms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/forms/1/edit").should route_to("admin/forms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/forms").should route_to("admin/forms#create")
    end

    it "routes to #update" do
      put("/admin/forms/1").should route_to("admin/forms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/forms/1").should route_to("admin/forms#destroy", :id => "1")
    end

  end
end
