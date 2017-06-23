class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :f_name
      t.string :l_name
      t.string :password_hash
      t.string :password_salt


      t.timestamps
    end
  end
end
