class RemoveTitleFromPostComment < ActiveRecord::Migration[5.2]
  def change
    remove_column :post_comments, :title, :string
  end
end
