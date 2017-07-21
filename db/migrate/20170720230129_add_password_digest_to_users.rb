class AddPasswordDigestToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_columns(:users, :password_hash, :password_salt)
    add_column(:users, :password_digest, :string)
  end
end
