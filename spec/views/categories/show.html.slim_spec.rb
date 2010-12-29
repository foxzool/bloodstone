require 'spec_helper'
include Devise::TestHelpers

describe "categories/show.html.slim" do
  let(:user) do
    stub_model(User).as_new_record
  end

  before  do
    assign(:user, user)
    # Devise provides resource and resource_name helpers and
    # mappings so stub them here.
    @view.stub(:resource).and_return(@user)
    @view.stub(:resource_name).and_return('user')
    @view.stub(:devise_mapping).and_return(Devise.mappings[:user])
  end

  before(:each) do
    @category = assign(:category, stub_model(Category,
        :name => "Name",
        :kind => "Kind"
      ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Kind/)
  end
end
