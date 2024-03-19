class RemoveColumn < ActiveRecord::Migration[7.1]
  def self.down
    remove_column :comments, :post_id_id
    remove_column :comments, :user_id_id
  end
end
