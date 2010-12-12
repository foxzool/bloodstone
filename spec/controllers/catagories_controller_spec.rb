require 'spec_helper'

describe CatagoriesController do

  def mock_catagory(stubs={})
    (@mock_catagory ||= mock_model(Catagory).as_null_object).tap do |catagory|
      catagory.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all catagories as @catagories" do
      Catagory.stub(:all) { [mock_catagory] }
      get :index
      assigns(:catagories).should eq([mock_catagory])
    end
  end

  describe "GET show" do
    it "assigns the requested catagory as @catagory" do
      Catagory.stub(:find).with("37") { mock_catagory }
      get :show, :id => "37"
      assigns(:catagory).should be(mock_catagory)
    end
  end

  describe "GET new" do
    it "assigns a new catagory as @catagory" do
      Catagory.stub(:new) { mock_catagory }
      get :new
      assigns(:catagory).should be(mock_catagory)
    end
  end

  describe "GET edit" do
    it "assigns the requested catagory as @catagory" do
      Catagory.stub(:find).with("37") { mock_catagory }
      get :edit, :id => "37"
      assigns(:catagory).should be(mock_catagory)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created catagory as @catagory" do
        Catagory.stub(:new).with({'these' => 'params'}) { mock_catagory(:save => true) }
        post :create, :catagory => {'these' => 'params'}
        assigns(:catagory).should be(mock_catagory)
      end

      it "redirects to the created catagory" do
        Catagory.stub(:new) { mock_catagory(:save => true) }
        post :create, :catagory => {}
        response.should redirect_to(catagory_url(mock_catagory))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved catagory as @catagory" do
        Catagory.stub(:new).with({'these' => 'params'}) { mock_catagory(:save => false) }
        post :create, :catagory => {'these' => 'params'}
        assigns(:catagory).should be(mock_catagory)
      end

      it "re-renders the 'new' template" do
        Catagory.stub(:new) { mock_catagory(:save => false) }
        post :create, :catagory => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested catagory" do
        Catagory.should_receive(:find).with("37") { mock_catagory }
        mock_catagory.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :catagory => {'these' => 'params'}
      end

      it "assigns the requested catagory as @catagory" do
        Catagory.stub(:find) { mock_catagory(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:catagory).should be(mock_catagory)
      end

      it "redirects to the catagory" do
        Catagory.stub(:find) { mock_catagory(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(catagory_url(mock_catagory))
      end
    end

    describe "with invalid params" do
      it "assigns the catagory as @catagory" do
        Catagory.stub(:find) { mock_catagory(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:catagory).should be(mock_catagory)
      end

      it "re-renders the 'edit' template" do
        Catagory.stub(:find) { mock_catagory(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested catagory" do
      Catagory.should_receive(:find).with("37") { mock_catagory }
      mock_catagory.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the catagories list" do
      Catagory.stub(:find) { mock_catagory }
      delete :destroy, :id => "1"
      response.should redirect_to(catagories_url)
    end
  end

end
