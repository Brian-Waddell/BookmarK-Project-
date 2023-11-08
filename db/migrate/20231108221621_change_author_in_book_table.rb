class ChangeAuthorInBookTable < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :author, :string, null: false 
  end
end
