class AddUserIdColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :user_id, :integer, :null => true
    add_index :comments, :user_id
  end
end
