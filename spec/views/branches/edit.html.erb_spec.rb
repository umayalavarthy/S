require 'spec_helper'

describe "branches/edit" do
  before(:each) do
    @branch = assign(:branch, stub_model(Branch,
      :name => "MyString",
      :course_id => 1
    ))
  end

  it "renders the edit branch form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", branch_path(@branch), "post" do
      assert_select "input#branch_name[name=?]", "branch[name]"
      assert_select "input#branch_course_id[name=?]", "branch[course_id]"
    end
  end
end
