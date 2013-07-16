require 'spec_helper'

describe "flags/index" do
  before(:each) do
    assign(:flags, [
      stub_model(Flag,
        :name => "Name",
        :type => "Type",
        :description => "MyText"
      ),
      stub_model(Flag,
        :name => "Name",
        :type => "Type",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of flags" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
