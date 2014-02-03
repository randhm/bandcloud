class RemoveEmailPasswordRoleFromArtists < ActiveRecord::Migration
  def up
    remove_column :artists, :email
    remove_column :artists, :password_digest
    remove_column :artists, :role
  end

  def down
  end
end
