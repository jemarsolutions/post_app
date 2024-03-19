class RemoveKeywordsColumnFromPosts < ActiveRecord::Migration[7.1]
  def change
    remove_column :posts, :keywords
  end
end
