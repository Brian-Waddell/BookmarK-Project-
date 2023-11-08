class ChangeLikesInCommentsTable < ActiveRecord::Migration[7.0]
  def change
    change_column :comments, :likes, :integer, null: false, default: 0 
  end
end
