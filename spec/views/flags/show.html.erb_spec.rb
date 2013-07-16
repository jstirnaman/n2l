require 'spec_helper'

describe "flags/show" do
  before(:each) do
    @flag = assign(:flag, stub_model(Flag,
      :name => "Name",
      :type => "Type",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Type/)
    rendered.should match(/MyText/)
  end
end
