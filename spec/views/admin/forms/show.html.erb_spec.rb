require 'spec_helper'

describe "admin/forms/show" do
  before(:each) do
    @admin_form = assign(:admin_form, stub_model(Admin::Form,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
