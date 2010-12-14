require 'spec_helper'

describe "categories/show.html.slim" do
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
