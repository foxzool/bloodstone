require "spec_helper"

describe HomeController do
  describe "routing to home" do
    it "generates #index" do
      { :get => "/", :get => "/home/index"}.should route_to(:controller => "home", :action => "index")
    end
  end
end


