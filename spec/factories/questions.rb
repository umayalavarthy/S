# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    question "MyText"
    correct_answer "MyString"
    incorrect_answer_1 "MyString"
    incorrect_answer_2 "MyString"
    incorrect_answer_3 "MyString"
    exam_id 1
  end
end
