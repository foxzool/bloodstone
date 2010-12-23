require "spec_helper"

describe PostsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/posts" }.should route_to(:controller => "posts", :action => "index")
    end

    it "generates #feed" do
      { :get => "/feed.rss" }.should route_to(:controller => "posts", :action => "feed", :format=> "rss")
    end

    it "generates #archives" do
      { :get => "/archives" }.should route_to(:controller => "posts", :action => "archives")
    end

    it "recognizes and generates #new" do
      { :get => "/admin/posts/new" }.should route_to(:controller => "posts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/posts/1", :get => "/admin/posts/1" }.should route_to(:controller => "posts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/admin/posts/1/edit" }.should route_to(:controller => "posts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/admin/posts" }.should route_to(:controller => "posts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/admin/posts/1"}.should route_to(:controller => "posts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "admin/posts/1" }.should route_to(:controller => "posts", :action => "destroy", :id => "1")
    end

  end
end
