class RemoveCommentsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :comment_id, :integer
  end
end
