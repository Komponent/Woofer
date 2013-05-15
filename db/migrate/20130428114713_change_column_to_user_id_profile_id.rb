class ChangeColumnToUserIdProfileId < ActiveRecord::Migration
  def up
    rename_column :posts, :to_user_id, :profile_id
  end

  def down
    rename_column :posts, :profile_id, :to_user_id
  end
end
