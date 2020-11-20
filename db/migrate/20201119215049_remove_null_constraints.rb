class RemoveNullConstraints < ActiveRecord::Migration[6.0]
  def change
    change_column :comments, :article_id, :integer, :null => true
  end
end
