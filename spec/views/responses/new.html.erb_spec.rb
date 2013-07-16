require 'spec_helper'

describe "responses/new" do
  before(:each) do
    assign(:response, stub_model(Response,
      :short_text => "MyText"
    ).as_new_record)
  end

  it "renders new response form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", responses_path, "post" do
      assert_select "textarea#response_short_text[name=?]", "response[short_text]"
    end
  end
end
