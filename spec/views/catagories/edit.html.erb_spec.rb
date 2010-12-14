require 'spec_helper'

describe "catagories/edit.html.erb" do
  before(:each) do
    @catagory = assign(:catagory, stub_model(Catagory,
      :new_record? => false,
      :name => "MyString",
      :kind => "MyString"
    ))
  end

  it "renders the edit catagory form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => catagory_path(@catagory), :method => "post" do
      assert_select "input#catagory_name", :name => "catagory[name]"
      assert_select "input#catagory_kind", :name => "catagory[kind]"
    end
  end
end
