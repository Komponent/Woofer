class ChangeColumnsForPost < ActiveRecord::Migration
  def up
    rename_column :posts, :from_user_id, :user_id


  end

  def down
    rename_column :posts, :user_id, :from_user_id
  end
end
