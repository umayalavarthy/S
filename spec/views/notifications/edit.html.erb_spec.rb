require 'spec_helper'

describe "notifications/edit" do
  before(:each) do
    @notification = assign(:notification, stub_model(Notification,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit notification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", notification_path(@notification), "post" do
      assert_select "input#notification_title[name=?]", "notification[title]"
      assert_select "textarea#notification_description[name=?]", "notification[description]"
    end
  end
end
