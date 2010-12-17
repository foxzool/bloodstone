require 'spec_helper'

describe "tags/index.html.slim" do
  before(:each) do
    assign(:tags, [
      stub_model(Tag,
        :name => "Name"
      ),
      stub_model(Tag,
        :name => "Name"
      )
    ])
  end

  it "renders a list of tags" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end