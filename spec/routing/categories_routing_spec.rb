require "spec_helper"

describe CategoriesController do
  describe "routing to admin categories" do
    
    it "recognizes and generates #posts_list" do
      { :get => "categories/ruby"}.should route_to(:controller => "categories", :action => "posts_list", :id => "ruby")
    end

    it "recognizes and generates #index" do
      { :get => "/admin/categories" }.should route_to(:controller => "categories", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/admin/categories/new" }.should route_to(:controller => "categories", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/admin/categories/1" }.should route_to(:controller => "categories", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/admin/categories/1/edit" }.should route_to(:controller => "categories", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/admin/categories" }.should route_to(:controller => "categories", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/admin/categories/1" }.should route_to(:controller => "categories", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/admin/categories/1" }.should route_to(:controller => "categories", :action => "destroy", :id => "1")
    end

  end
end
