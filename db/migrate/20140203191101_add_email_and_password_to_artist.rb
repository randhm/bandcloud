class AddEmailAndPasswordToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :email, :string
    add_column :artists, :password_digest, :string
    add_column :artists, :role, :string
  end
end
