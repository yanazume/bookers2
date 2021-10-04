class AddTitleToPostComment < ActiveRecord::Migration[5.2]
  def change
    add_column :post_comments, :title, :string
    add_column :post_comments, :body, :string
  end
end
