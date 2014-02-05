class AddFlagtoComments < ActiveRecord::Migration
  def up
    add_column :comments, :flag, :boolean
  end

  def down
  end
end
