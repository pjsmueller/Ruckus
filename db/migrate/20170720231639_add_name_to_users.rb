class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_columns(:users, :f_name, :l_name)
    add_column(:users, :name, :string)
  end
end
