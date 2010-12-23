require "spec_helper"

describe TagsController do
  describe "routing to admin tags" do

    it "recognizes and generates #posts_list" do
      { :get => "/tags/ruby"}.should route_to(:controller => "tags", :action => "posts_list", :name => "ruby")
    end

    it "recognizes and generates #index" do
      { :get => "/admin/tags" }.should route_to(:controller => "tags", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/admin/tags/new" }.should route_to(:controller => "tags", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/admin/tags/1" }.should route_to(:controller => "tags", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/admin/tags/1/edit" }.should route_to(:controller => "tags", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/admin/tags" }.should route_to(:controller => "tags", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/admin/tags/1" }.should route_to(:controller => "tags", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/admin/tags/1" }.should route_to(:controller => "tags", :action => "destroy", :id => "1")
    end

  end
end
