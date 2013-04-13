require 'spec_helper'

describe "questions/index" do
  before(:each) do
    assign(:questions, [
      stub_model(Question,
        :question => "MyText",
        :correct_answer => "Correct Answer",
        :incorrect_answer_1 => "Incorrect Answer 1",
        :incorrect_answer_2 => "Incorrect Answer 2",
        :incorrect_answer_3 => "Incorrect Answer 3",
        :exam_id => 1
      ),
      stub_model(Question,
        :question => "MyText",
        :correct_answer => "Correct Answer",
        :incorrect_answer_1 => "Incorrect Answer 1",
        :incorrect_answer_2 => "Incorrect Answer 2",
        :incorrect_answer_3 => "Incorrect Answer 3",
        :exam_id => 1
      )
    ])
  end

  it "renders a list of questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Correct Answer".to_s, :count => 2
    assert_select "tr>td", :text => "Incorrect Answer 1".to_s, :count => 2
    assert_select "tr>td", :text => "Incorrect Answer 2".to_s, :count => 2
    assert_select "tr>td", :text => "Incorrect Answer 3".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
