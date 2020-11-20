class AddUsersToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :user_id, :integer, :null => true
    add_index :articles, :user_id
  end
end
