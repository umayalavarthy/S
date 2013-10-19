require 'spec_helper'

describe "notifications/index" do
  before(:each) do
    assign(:notifications, [
      stub_model(Notification,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(Notification,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of notifications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
