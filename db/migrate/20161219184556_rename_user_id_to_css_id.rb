class RenameUserIdToCssId < ActiveRecord::Migration
  def change
    rename_column :searches, :user_id, :css_id
    rename_column :downloads, :user_id, :css_id
  end
end
