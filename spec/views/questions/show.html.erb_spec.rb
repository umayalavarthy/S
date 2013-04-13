require 'spec_helper'

describe "questions/show" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :question => "MyText",
      :correct_answer => "Correct Answer",
      :incorrect_answer_1 => "Incorrect Answer 1",
      :incorrect_answer_2 => "Incorrect Answer 2",
      :incorrect_answer_3 => "Incorrect Answer 3",
      :exam_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Correct Answer/)
    rendered.should match(/Incorrect Answer 1/)
    rendered.should match(/Incorrect Answer 2/)
    rendered.should match(/Incorrect Answer 3/)
    rendered.should match(/1/)
  end
end
