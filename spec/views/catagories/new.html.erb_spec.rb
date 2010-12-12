require 'spec_helper'

describe "catagories/new.html.erb" do
  before(:each) do
    assign(:catagory, stub_model(Catagory,
      :name => "MyString",
      :kind => "MyString"
    ).as_new_record)
  end

  it "renders new catagory form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => catagories_path, :method => "post" do
      assert_select "input#catagory_name", :name => "catagory[name]"
      assert_select "input#catagory_kind", :name => "catagory[kind]"
    end
  end
end
