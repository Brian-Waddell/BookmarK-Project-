class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :topic
      t.string :title
      t.integer :participant_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
