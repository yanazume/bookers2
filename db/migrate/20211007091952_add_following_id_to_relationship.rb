class AddFollowingIdToRelationship < ActiveRecord::Migration[5.2]
  def change
    add_column :relationships, :following_id, :integger
  end
end
