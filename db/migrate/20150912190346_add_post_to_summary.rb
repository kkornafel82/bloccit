class AddPostToSummary < ActiveRecord::Migration
  def change
    add_column :summaries, :summary_id, :integer
    add_index :summaries, :summary_id
  end
end
