require 'spec_helper'

describe "flags/edit" do
  before(:each) do
    @flag = assign(:flag, stub_model(Flag,
      :name => "MyString",
      :type => "",
      :description => "MyText"
    ))
  end

  it "renders the edit flag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", flag_path(@flag), "post" do
      assert_select "input#flag_name[name=?]", "flag[name]"
      assert_select "input#flag_type[name=?]", "flag[type]"
      assert_select "textarea#flag_description[name=?]", "flag[description]"
    end
  end
end
