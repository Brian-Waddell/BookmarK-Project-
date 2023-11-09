class ChangeTitleInQuestion < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :body, :string, null: false
  end
end
