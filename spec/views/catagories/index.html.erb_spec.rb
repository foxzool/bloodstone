require 'spec_helper'

describe "catagories/index.html.erb" do
  before(:each) do
    assign(:catagories, [
      stub_model(Catagory,
        :name => "Name",
        :kind => "Kind"
      ),
      stub_model(Catagory,
        :name => "Name",
        :kind => "Kind"
      )
    ])
  end

  it "renders a list of catagories" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
  end
end
