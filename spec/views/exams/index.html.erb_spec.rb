require 'spec_helper'

describe "exams/index" do
  before(:each) do
    assign(:exams, [
      stub_model(Exam,
        :name => "Name",
        :exam_type => "Exam Type"
      ),
      stub_model(Exam,
        :name => "Name",
        :exam_type => "Exam Type"
      )
    ])
  end

  it "renders a list of exams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Exam Type".to_s, :count => 2
  end
end
