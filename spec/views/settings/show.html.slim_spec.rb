require 'spec_helper'

describe "settings/show.html.slim" do
  before(:each) do
    @setting = assign(:setting, stub_model(Setting,
      :var => "Var",
      :value => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Var/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
