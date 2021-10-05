class RemoveBodyFromPostComment < ActiveRecord::Migration[5.2]
  def change
    remove_column :post_comments, :body, :string
  end
end
