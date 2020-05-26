class ChangeUseridInPosts < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :user_id, :integer, references: :users
  end
end
