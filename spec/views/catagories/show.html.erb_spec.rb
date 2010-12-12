require 'spec_helper'

describe "catagories/show.html.erb" do
  before(:each) do
    @catagory = assign(:catagory, stub_model(Catagory,
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
