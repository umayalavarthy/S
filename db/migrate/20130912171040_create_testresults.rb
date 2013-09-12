class CreateTestresults < ActiveRecord::Migration
  def change
    create_table :testresults do |t|
      t.integer :score
      t.integer :exam_id
      t.integer :user_id

      t.timestamps
    end
  end
end
