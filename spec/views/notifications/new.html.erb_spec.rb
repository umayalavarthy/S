require 'spec_helper'

describe "notifications/new" do
  before(:each) do
    assign(:notification, stub_model(Notification,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new notification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", notifications_path, "post" do
      assert_select "input#notification_title[name=?]", "notification[title]"
      assert_select "textarea#notification_description[name=?]", "notification[description]"
    end
  end
end
