class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username.string
      t.string :f_name.string
      t.string :l_name.string
      t.string :password_hash.string

      t.timestamps
    end
  end
end
