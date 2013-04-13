require 'spec_helper'

describe "exams/new" do
  before(:each) do
    assign(:exam, stub_model(Exam,
      :name => "MyString",
      :exam_type => "MyString"
    ).as_new_record)
  end

  it "renders new exam form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exams_path, "post" do
      assert_select "input#exam_name[name=?]", "exam[name]"
      assert_select "input#exam_exam_type[name=?]", "exam[exam_type]"
    end
  end
end
