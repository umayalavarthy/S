require 'spec_helper'

describe "exams/edit" do
  before(:each) do
    @exam = assign(:exam, stub_model(Exam,
      :name => "MyString",
      :exam_type => "MyString"
    ))
  end

  it "renders the edit exam form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exam_path(@exam), "post" do
      assert_select "input#exam_name[name=?]", "exam[name]"
      assert_select "input#exam_exam_type[name=?]", "exam[exam_type]"
    end
  end
end
