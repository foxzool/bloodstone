require "spec_helper"

describe CatagoriesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/catagories" }.should route_to(:controller => "catagories", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/catagories/new" }.should route_to(:controller => "catagories", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/catagories/1" }.should route_to(:controller => "catagories", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/catagories/1/edit" }.should route_to(:controller => "catagories", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/catagories" }.should route_to(:controller => "catagories", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/catagories/1" }.should route_to(:controller => "catagories", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/catagories/1" }.should route_to(:controller => "catagories", :action => "destroy", :id => "1")
    end

  end
end
