require 'spec_helper'

describe "questions/new" do
  before(:each) do
    assign(:question, stub_model(Question,
      :question => "MyText",
      :correct_answer => "MyString",
      :incorrect_answer_1 => "MyString",
      :incorrect_answer_2 => "MyString",
      :incorrect_answer_3 => "MyString",
      :exam_id => 1
    ).as_new_record)
  end

  it "renders new question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", questions_path, "post" do
      assert_select "textarea#question_question[name=?]", "question[question]"
      assert_select "input#question_correct_answer[name=?]", "question[correct_answer]"
      assert_select "input#question_incorrect_answer_1[name=?]", "question[incorrect_answer_1]"
      assert_select "input#question_incorrect_answer_2[name=?]", "question[incorrect_answer_2]"
      assert_select "input#question_incorrect_answer_3[name=?]", "question[incorrect_answer_3]"
      assert_select "input#question_exam_id[name=?]", "question[exam_id]"
    end
  end
end
